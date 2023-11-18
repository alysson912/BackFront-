//
//  GenericService.swift
//  ProtocolsCodable
//
//  Created by Alysson Menezes on 18/11/23.
//

import Foundation




enum TypeFetch {
    case urlSessionRequest
    //  case request
}

protocol GenericService: AnyObject {
    typealias completion <T> = (_ result: T, _ failure: Error?) -> Void
}
