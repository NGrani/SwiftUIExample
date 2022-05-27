//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Георгий Маркарян on 27.05.2022.
//

import SwiftUI

struct Stuff : View {
    var body: some View {
        NavigationView{
            List(userModel){ user in
                MainView(user: user)
            }
            .navigationBarTitle(Text("Сотрудники"))
        }
    }
}


struct Stuff_Previews : PreviewProvider {
    static var previews: some View {
        Stuff()
    }
}

