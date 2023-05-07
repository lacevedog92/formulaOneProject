//
//  ErrorView.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 20/03/23.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var responseFetcher:ResponseFetcher
    var body: some View {
        Text(Image(systemName: "exclamationmark.circle"))
                    .font(.system(size: 65))
                    .foregroundColor(.red)
                Text(responseFetcher.errorMessage ?? "")    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(responseFetcher: ResponseFetcher())
    }
}
