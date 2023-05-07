//
//  Driver.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 05/03/23.
//

import Foundation
// MARK: - Driver
struct Driver: Codable {
    let driverID, permanentNumber, code: String
    let url: String
    let givenName, familyName, dateOfBirth, nationality: String

    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case permanentNumber, code, url, givenName, familyName, dateOfBirth, nationality
    }
    
    init(driverID: String, permanentNumber: String, code: String, url: String, givenName: String, familyName: String, dateOfBirth: String, nationality: String ){
        self.driverID = driverID
        self.permanentNumber = permanentNumber
        self.code = code
        self.url = url
        self.givenName = givenName
        self.familyName = familyName
        self.dateOfBirth = dateOfBirth
        self.nationality = nationality
        }
}
