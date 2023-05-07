//
//  RaceTable.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 05/03/23.
//

import Foundation
// MARK: - RaceTable
struct RaceTable: Codable {
    let season, round: String
    let races: [Race]

    enum CodingKeys: String, CodingKey {
        case season, round
        case races = "Races"
    }
    
    init(season: String, round: String, races: [Race]){
            self.season = season
            self.round  = round
            self.races  = races
        }
    
    
    
}
