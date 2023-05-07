//
//  Race.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 05/03/23.
//

import Foundation
// MARK: - Race
struct Race: Codable {    
    let season, round: String
    let url: String
    let raceName: String
    let date, time: String
    let results: [Results]?

    enum CodingKeys: String, CodingKey {
        case season, round, url, raceName
        case date, time
        case results = "Results"
    }
    
    init(season: String, round: String, url: String, raceName: String, date: String, time: String, results: [Results] ){
            self.season = season
            self.round  = round
            self.url = url
            self.raceName = raceName
            self.date = date
            self.time = time
            self.results = results
        }
}
