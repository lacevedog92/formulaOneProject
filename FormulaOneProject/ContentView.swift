//
//  ContentView.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 05/03/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var responseFetcher = ResponseFetcher()
    var body: some View {
        if responseFetcher.isLoading{
                   LoadingView()
               }
               else if responseFetcher.errorMessage != nil{
                   ErrorView(responseFetcher: responseFetcher)
               }
               else{
                   ResultsListView(response: responseFetcher.response!)
               }    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
