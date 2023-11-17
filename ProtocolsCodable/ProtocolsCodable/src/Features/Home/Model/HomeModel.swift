//
//  HomeModel.swift
//  ProtocolsCodable
//
//  Created by Alysson Menezes on 17/11/23.
//

import UIKit

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let dataMock = try? JSONDecoder().decode(DataMock.self, from: jsonData)

import Foundation

// MARK: - DataMock
struct HomeModel: Codable {
    var totalValue: Double?
    var listProducts: [ListProduct]?
}

// MARK: - ListProduct
struct ListProduct: Codable {
    var id, image, title, brand: String?
    var model, description: String?
    var productImage: [ProductImage]?
}

enum ProductImage: String, Codable {
    case gsl = "GSL"
    case k1 = "k1"
    case the210Y = "210y"
}
