//
//  ResultsListView.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 20/03/23.
//

import SwiftUI

struct ResultsListView: View {
    let response : Response
    
    var body: some View {
        let grandPrixName = response.response.raceTable.races.first!.raceName
        NavigationView{
            List{
                ForEach((response.response.raceTable.races.first?.results)!){ item in
                    NavigationLink{
                        DetailView(resultItem: item)
                    }
                    label : {
                        ResultRow(resultItem: item )
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle(grandPrixName.replacingOccurrences(of: "Grand Prix", with: "GP"))
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}
struct ResultsListView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsListView(response: ResponseFetcher.successState().response!)
    }
}
