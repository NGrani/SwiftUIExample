//
//  ServiceImageRow.swift
//  SwiftUIExample
//
//  Created by Георгий Маркарян on 27.05.2022.
//

import SwiftUI

struct ServiceImageRow: View {
    var object: ServiceModel
    var body: some View {
        VStack{
            Image(object.image)
                .resizable()
                .cornerRadius(10)
                .frame(width: 170, height: 170)
        }.padding(.leading, 15)
    }
}

struct ServiceImageRow_Previews: PreviewProvider {
    static var previews: some View {
        ServiceImageRow(object: serviceModel[1])
    }
}
