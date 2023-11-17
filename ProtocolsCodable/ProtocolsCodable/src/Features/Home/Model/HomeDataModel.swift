// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let homeDataModel = try? JSONDecoder().decode(HomeDataModel.self, from: jsonData)

import Foundation

// MARK: - HomeDataModel
struct HomeDataModel: Codable {
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
