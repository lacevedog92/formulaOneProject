//
//  Constructor.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 05/03/23.
//

import Foundation
// MARK: - Constructor
struct Constructor: Codable {
    let constructorID: String
    let url: String
    let name, nationality: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
    
    init(constructorID: String, url: String, name: String, nationality: String ){
        self.constructorID = constructorID
        self.url = url
        self.name = name
        self.nationality = nationality
        }
}
