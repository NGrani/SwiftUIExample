//
//  HomePage.swift
//  SwiftUIExample
//
//  Created by Георгий Маркарян on 27.05.2022.
//

import SwiftUI

struct HomePage: View {
    var categories: [String: [ServiceModel]] {
        .init(
            grouping: serviceModel,
            by: { $0.category.rawValue })
    }
    
    var body: some View {
        NavigationView {
            List{
                MainView(user: head).listRowInsets(EdgeInsets()).frame(height: 160)

                ForEach(categories.keys.sorted(by: >), id: \.self) { key in
                    if key == "Service" {
                        ServiceRow(categoryName: key, items: self.categories[key]!)
                    } else if key == "Rent" {
                        RentRow(categoryName: key, items: self.categories[key]!)
                    }
                    
                }.listRowInsets(EdgeInsets())
                
                NavigationLink(destination: Stuff()) {
                    Text("Наши сотрудники")
                }
            }
            .navigationBarTitle(Text("Homepage"))
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
