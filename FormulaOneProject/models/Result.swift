//
//  Result.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 05/03/23.
//

import Foundation
// MARK: - Result
struct Results: Codable,Identifiable {
    let id = UUID()
    let number, position, positionText, points: String
    let driver: Driver
    let constructor: Constructor
    let grid, laps, status: String

    
    enum CodingKeys: String, CodingKey {
        case id,number, position, positionText, points
        case driver = "Driver"
        case constructor = "Constructor"
        case grid, laps, status
    }
    
    init(number: String, position: String, positionText: String, points: String, driver: Driver, constructor: Constructor, grid: String, laps: String, status: String ){
        self.number = number
        self.position = position
        self.positionText = positionText
        self.points = points
        self.driver = driver
        self.constructor = constructor
        self.grid = grid
        self.laps = laps
        self.status = status
     
    }
    
    
    static func result1() -> Results {
        return Results(number: "11", position: "1", positionText: "1", points: "25", driver:
                        Driver(driverID: "perez",
                               permanentNumber: "11",
                               code: "PER",
                               url:"http://en.wikipedia.org/wiki/Sergio_P%C3%A9rez",
                               givenName: "Sergio",
                               familyName:"Pérez",
                               dateOfBirth:"1990-01-26",
                               nationality: "Mexican"
                              ),
                       constructor:
                        Constructor(constructorID: "red_bull",
                                    url: "http://en.wikipedia.org/wiki/Red_Bull_Racing",
                                    name: "Red Bull",
                                    nationality: "Austrian"
                                   ),
                       grid: "1",laps: "50", status: "Finished"
        )
        
    }
}
