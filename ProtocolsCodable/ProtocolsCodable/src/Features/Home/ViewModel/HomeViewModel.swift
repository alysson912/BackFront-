//
//  HomeViewModel.swift
//  ProtocolsCodable
//
//  Created by Alysson Menezes on 17/11/23.
//

import UIKit

protocol HomeViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}


class HomeViewModel {
    
    
    private var service = HomeService()
    private var data: HomeDataModel?
    
    private weak var delegate: HomeViewModelDelegate?
    
    public func delegate(delegate: HomeViewModelDelegate?){
        self.delegate = delegate
    }
    
    
    
    public func fetchRequest(_ typeFetch: TypeFetch){
        service.getProductList { result in
            switch result {
            case .success(let success):
                
                self.data = success
                self.delegate?.success()
                
            case .failure(let failure):
                self.delegate?.error(message: failure.errorDescription ?? "")
            }
            
        }
    }
    
    public func loadCurrentNft(indexPath: IndexPath) -> ListProduct {
        return data?.listProducts?[indexPath.row] ?? ListProduct()
    }
    
    
    public var numberOfRowsInSection: Int {
        return data?.listProducts?.count ?? 0
    }
    public var heightForRowAt: CGFloat {
        return 360
    }
}
