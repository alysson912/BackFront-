//
//  HomeService.swift
//  ProtocolsCodable
//
//  Created by Alysson Menezes on 17/11/23.
//

import UIKit

class HomeService: NSObject {
    
    func getProductList() {
        let urlString : String = "https://run.mocky.io/v3/808cd9ea-ce39-456f-bf1a-f12f68b31f76"
        
        guard let url: URL = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            if let error {
                print("Error \(#function) Detalhe do error \(error.localizedDescription)")
                return
            }
            guard let data else {
                
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                return
            }
            
            do {
                try <#throwing expression#>
            } catch <#pattern#> {
                <#statements#>
            }
            
            
        }
        task.resume()
    }
}
