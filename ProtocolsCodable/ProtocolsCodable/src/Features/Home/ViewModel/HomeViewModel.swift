//
//  HomeViewModel.swift
//  ProtocolsCodable
//
//  Created by Alysson Menezes on 17/11/23.
//

import UIKit

class HomeViewModel {

    
    var service = HomeService()
    
    
    public func fetchRequest(){
        service.getProductList { result in
            switch result {
            case .success(let success):
                print(success)
            case .failure(let failure):
                print(failure.errorDescription ?? "")
            }
            
        }
    }
}
