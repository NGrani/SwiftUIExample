//
//  Description.swift
//  SwiftUIExample
//
//  Created by Георгий Маркарян on 27.05.2022.
//

import SwiftUI

struct MainView: View {
    var user: UserModel
    var body: some View {
        VStack{
            TopView(user: user)
            Text(user.text)
                .lineLimit(nil)
        }.padding()

    }
}

struct Description_Previews: PreviewProvider {
    static var previews: some View {
        MainView(user: userModel[0])
    }
}
