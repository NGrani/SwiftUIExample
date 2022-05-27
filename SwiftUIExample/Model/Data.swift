//
//  Data.swift
//  SwiftUIExample
//
//  Created by Георгий Маркарян on 27.05.2022.
//

import Foundation
import UIKit
import SwiftUI


let head = UserModel(id: 1112, name: "NaGraniProdaction", profileImage: "14", email: "nagrani@mail.ru", likes: "54.5K", text: "Наша компания что-то делает и какие-то услуги предоставляет")
let userModel: [UserModel] = load("userModelData.json")
let serviceModel: [ServiceModel] = load("serviceModelData.json")


func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
