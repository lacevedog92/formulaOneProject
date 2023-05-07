//
//  DataResponse.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 05/03/23.
//

import Foundation
// MARK: - DataResponse
struct DataResponse: Codable {
    let raceTable: RaceTable
    
    enum CodingKeys: String, CodingKey {
        case raceTable = "RaceTable"
    }
    
    init(raceTable: RaceTable){
        self.raceTable = raceTable
        }
}
