//
//  ServiceModel.swift
//  SwiftUIExample
//
//  Created by Георгий Маркарян on 27.05.2022.
//
import Foundation
import SwiftUI

enum Category: String, CaseIterable, Codable, Hashable {
    case service = "Service"
    case rent = "Rent"
}

struct ServiceModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var shortName: String
    var category: Category
    var description: String
    var rating: Double
    var isFavorite: Bool
    var isFeatured: Bool
}
