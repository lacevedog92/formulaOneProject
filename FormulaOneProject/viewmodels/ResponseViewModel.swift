//
//  ResponseViewModel.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 05/03/23.
//

import Foundation

final class ResponseViewModel: ObservableObject {
    func executeRequest() async {
        let responseURL = URL(string: "http://ergast.com/api/f1/current/last/results.json")!
        
        
        let (data, _) = try! await URLSession.shared.data(from: responseURL)
        let responseModel = try! JSONDecoder().decode(Response.self, from: data)
        //print (responseModel)
        print(responseModel.response.raceTable.races.first?.results ?? "")        
        
        
    }
}
