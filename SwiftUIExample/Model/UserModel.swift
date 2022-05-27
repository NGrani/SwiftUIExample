//
//  UserModel.swift
//  SwiftUIExample
//
//  Created by Георгий Маркарян on 27.05.2022.
//

import Foundation
import UIKit
import SwiftUI

struct UserModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var profileImage: String
    var email: String
    var likes: String
    var text: String
}
