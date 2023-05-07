//
//  ConstructorBackground.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 27/03/23.
//

import SwiftUI

struct ConstructorBackground: View {
    let resultItem : Results
    var body: some View {
        Image(resultItem.constructor.constructorID)
            .resizable()
            .frame(height: 300)
            //.ignoresSafeArea(edges: .top)
    }
}

struct ConstructorBackground_Previews: PreviewProvider {
    static var previews: some View {
        ConstructorBackground(resultItem: Results.result1())
    }
}
