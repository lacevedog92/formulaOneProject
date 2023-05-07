//
//  DriverProfilePhoto.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 27/03/23.
//

import SwiftUI

struct DriverProfilePhoto: View {
    let resultItem : Results
    var body: some View {
        Image(resultItem.driver.driverID)
            .resizable()
            .frame(width: 200, height: 200)
            .offset()
            .padding(.bottom, -20)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 5)
    }
}

struct DriverProfilePhoto_Previews: PreviewProvider {
    static var previews: some View {
        DriverProfilePhoto(resultItem: Results.result1())
    }
}
