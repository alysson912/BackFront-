//
//  HomeService.swift
//  ProtocolsCodable
//
//  Created by Alysson Menezes on 17/11/23.
//

import UIKit

enum NetworkError: Error {
    case invalidURL(url: String)
    case noData
    case invalidResponse
    case decodingError(Error)
    case networkFailure(Error)
}

extension NetworkError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .invalidURL(let url):
            return "URL inválida -> \(url)."
        case .noData:
            return "Dados não recebidos da API."
        case .invalidResponse:
            return "Reposta inválida da API."
        case .decodingError(let error):
            return "Decodificação falhou: \(error.localizedDescription)"
        case .networkFailure(let error):
            return "Falha na rede: \(error.localizedDescription)"
        }
    }
}

class HomeService: NSObject {
    
    func getProductList(completion: @escaping (Result<HomeDataModel, NetworkError>) -> Void) {
        let urlString : String = "https://run.mocky.io/v3/808cd9ea-ce39-456f-bf1a-f12f68b31f76"
        
        guard let url: URL = URL(string: urlString) else {
            completion(.failure(.invalidURL (url: urlString)))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            if let error {
                print("Error \(#function) Detalhe do error \(error.localizedDescription)")
                completion(.failure(.networkFailure(error)))
                return
            }
            guard let data else {
                completion(.failure(.noData))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            do {
                let productList: HomeDataModel =  try JSONDecoder().decode(HomeDataModel.self, from: data)
                print("SUCCESS -> \(#function)")
                completion(.success(productList))
            } catch  {
                print("Error -> \(#function)")
                completion(.failure(.decodingError(error)))
            }
            
            
        }
        task.resume()
    }
}
