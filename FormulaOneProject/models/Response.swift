//
//  Response.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 05/03/23.
//

import Foundation
// MARK: - Response
struct Response: Codable {
    let response: DataResponse
    
    private enum CodingKeys: String, CodingKey {
            case response = "MRData"
        }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        response = try values.decodeIfPresent(DataResponse.self, forKey: .response)!
    }
    
    init(response: DataResponse){
        self.response = response
        }
    
    /*
     static func example1() -> Breed {
             return Breed(name: "Abyssinian",
                          id: "abys",
                          explaination: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                          temperament: "Active, Energetic, Independent, Intelligent, Gentle",
                          energyLevel: 5,
                          isHairless: false, image: BreedImage(height: 100, id: "i", url: "https://cdn2.thecatapi.com/images/unX21IBVB.jpg", width: 100))
             
         }
     */
    
    
    static func example1() -> Response {
        return Response(
                        response: DataResponse(
                                                raceTable: RaceTable(season: "2023",
                                                                     round: "2",
                                                                     races: [Race(season: "2023",
                                                                                  round: "2",
                                                                                  url: "https://en.wikipedia.org/wiki/2023_Saudi_Arabian_Grand_Prix",
                                                                                  raceName: "Saudi Arabian Grand Prix",
                                                                                  date: "2023-03-19",
                                                                                  time: "17:00:00Z",
                                                                                  results: [
                                                                                    Results(number: "11", position: "1", positionText: "1", points: "25", driver:
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
                                                                                           ),
                                                                                    Results(number: "1", position: "2", positionText: "2", points: "19", driver:
                                                                                                                                                                Driver(driverID: "max_verstappen",
                                                                                                                                                                   permanentNumber: "33",
                                                                                                                                                                   code: "VER",
                                                                                                                                                                   url:"http://en.wikipedia.org/wiki/Max_Verstappen",
                                                                                                                                                                   givenName: "Max",
                                                                                                                                                                   familyName:"Verstappen",
                                                                                                                                                                   dateOfBirth:"1997-09-30",
                                                                                                                                                                   nationality: "Dutch"
                                                                                                                                                                  ),
                                                                                                                                                            constructor:
                                                                                                                                                                Constructor(constructorID: "red_bull",
                                                                                                                                                                            url: "http://en.wikipedia.org/wiki/Red_Bull_Racing",
                                                                                                                                                                            name: "Red Bull",
                                                                                                                                                                            nationality: "Austrian"
                                                                                                                                                                           ),
                                                                                            grid: "15",laps: "50", status: "Finished"
                                                                                           )
                                                                                           ]
                                                                                 )
                                                                            ]
                                                                    )
                                            )
                        )
    }
}

