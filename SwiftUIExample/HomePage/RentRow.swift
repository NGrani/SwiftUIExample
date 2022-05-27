//
//  RentRow.swift
//  SwiftUIExample
//
//  Created by Георгий Маркарян on 27.05.2022.
//


import SwiftUI

struct RentRow: View {
    var categoryName: String
    var items: [ServiceModel]
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Text(categoryName).font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal){
                HStack{
                    ForEach(items) { item in
                        NavigationLink(destination: DetailInfo(object: item)) {
                            ServiceImageRow(object: item)
                        }
                    }
                }.frame(height: 190)
            }
        }
    }
}

struct RentRow_Previews: PreviewProvider {
    static var previews: some View {
        RentRow(categoryName: serviceModel[0].category.rawValue, items: Array(serviceModel))
    }
}
