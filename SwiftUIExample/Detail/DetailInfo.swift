//
//  DetailInfo.swift
//  SwiftUIExample
//
//  Created by Георгий Маркарян on 27.05.2022.
//

import SwiftUI

struct DetailInfo: View {
    
    var object: ServiceModel
    
    var body: some View {
        VStack(spacing: 16.0) {
            VStack(spacing: 20.0) {
                MainImage(object: object)
                Text(object.name)
                    .lineLimit(nil)
                    .font(.title)
            }
            LittleStack(object: object)
            
            VStack(alignment: .leading, spacing: 12.0) {
                Text("Описание")
                    .font(.title)
                Text(object.description)
                    .lineLimit(nil)
            }
            Spacer()
        }.padding()
    }
}



struct LittleStack: View {
    
    var object: ServiceModel
    
    var body: some View {
        HStack(spacing: 30.0) {
            VStack {
                Text("\(NSString(format: "%.1f",object.rating))")
                    .font(.title)
                Text("Оценка")
                    .font(.body)
                    .fontWeight(.medium)
            }
            VStack {
                Text("250")
                    .font(.title)
                Text("Довольных клиентов")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
    }
}

struct MainImage: View {
    
    var object: ServiceModel
    
    var body: some View {
        Image(object.image)
            .resizable()
            .cornerRadius(30)
            .frame(width: 170, height: 170)
        //        RoundedRectangle(cornerRadius: 16)
        //                   .stroke(.blue, lineWidth: 4)
            .shadow(radius: 10)
    }
}

struct DetailInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfo(object: serviceModel[0])
    }
}
