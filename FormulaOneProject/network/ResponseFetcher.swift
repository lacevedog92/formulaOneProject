//
//  ResponseFetcher.swift
//  FormulaOneProject
//
//  Created by Luis Acevedo on 13/03/23.
//

import Foundation

class ResponseFetcher:ObservableObject{
    
    @Published var response : Response?
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    init() {
        fetchOneResponse()
    }
    
    func fetchOneResponse(){
        
        isLoading = true
        errorMessage = nil
        
        
        let service = APIService()
        let url = URL(string: "http://ergast.com/api/f1/current/last/results.json")
        service.fetchResponse(url: url){[unowned self] result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result{
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                    print(error)
                case .success(let response):
                    self.response = response
                }
            }
        }
        
    }
    
    
    static func errorState() -> ResponseFetcher {
           let fetcher = ResponseFetcher()
           fetcher.errorMessage = APIError.url(URLError.init(.notConnectedToInternet)).localizedDescription
           return fetcher
       }
       
       static func successState() -> ResponseFetcher {
           let fetcher = ResponseFetcher()
           fetcher.response = Response.example1()
           return fetcher
       }
    
    
    
}
