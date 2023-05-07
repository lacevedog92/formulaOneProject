//
//  ResultRow.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 20/03/23.
//

import SwiftUI

struct ResultRow: View {
    let resultItem : Results
    var body: some View {
        HStack{
            Image(resultItem.driver.driverID)
                .resizable()
                .clipShape(Circle())
                .frame(width: 45,height: 45)
                .overlay{
                    Circle().stroke(.gray, lineWidth: 1)
                }
                .shadow(radius: 5)
            VStack (alignment: .leading){
                HStack{
                    Text("\(resultItem.position) - " + resultItem.driver.givenName + " " + resultItem.driver.familyName)
                        .font(.headline)
                        .foregroundColor(.black)
                }
                    Text(resultItem.constructor.name)
                        .font(.subheadline)
                    Text(resultItem.status)
                        .font(.subheadline)
                        .foregroundColor(.blue)
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
        }
    }
}

struct ResultRow_Previews: PreviewProvider {
    static var previews: some View {
        ResultRow(resultItem: Results.result1())
    }
}
