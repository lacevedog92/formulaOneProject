//
//  APIService.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 12/03/23.
//

import Foundation

struct APIService {
    func fetchResponse(url :URL? , completion: @escaping(Result<Response, APIError>) -> Void) {
        
        guard let url = url else {
            let error = APIError.badURL
            completion(Result.failure(error))
            return
        }
        let task = URLSession.shared.dataTask(with: url){(data, response, error) in
            
            if
                let error = error as? URLError {
                completion(Result.failure(APIError.url(error)))
            }
            else if let response = response as? HTTPURLResponse,
                    !(200...299).contains(response.statusCode)
            {
                    completion(Result.failure(APIError.badResponse(statusCode: response.statusCode)))
            }
            else if let data = data {
                let decoder = JSONDecoder()
                do{
                    let response = try decoder.decode(Response.self, from: data)
                    completion(Result.success(response))
                }
                catch{
                    completion(Result.failure(APIError.parsing(error as? DecodingError)))
                }
            }
        }
        task.resume()
    }
}
