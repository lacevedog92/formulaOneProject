//
//  APIError.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 12/03/23.
//

import Foundation

enum APIError:Error, CustomStringConvertible{
    case badURL
    case badResponse(statusCode: Int)
    case url(URLError?)
    case parsing(DecodingError?)
    case unknown
    
    var localizedDescription: String{
        //user feedback
        switch self {
        case .badURL, .parsing, .unknown :
            return "Sorry something went wrong"
        case .badResponse(_) :
            return "Sorry, connection server has been failed"
        case .url(let error):
            return error?.localizedDescription ?? "Somenthing went wrong"
        }
        
    }
    
    
    var description: String {
        //info for debbuging
        switch self {
        case .unknown:
            return "Unknown error"
        case .badURL:
            return "Invalid URL"
        case .url(let error):
            return error?.localizedDescription ?? "url session error"
        case .parsing(let error):
            return "passing error \(error?.localizedDescription ?? "")"
        case .badResponse(statusCode: let statusCode):
            return "bad response with status code \(statusCode)"
        }
    }
    
    
}

