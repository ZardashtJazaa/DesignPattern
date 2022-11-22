//
//  NetworkAPI.swift
//  FacadeDesignPatterns
//
//  Created by Zardasht on 11/7/22.
//

import Foundation

struct Model:Codable {
    
    let id: Int
//    let name: String?
//    let email:String?
    let title:String
    let body:String
}


struct NetworkAPI: Codable {
    
    
    
//    func allUsers(completions: @escaping((Result<[Model],Error>) -> Void)) {
//
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
//
//        var urlRequest = URLRequest(url: url)
//        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        urlRequest.httpMethod = "GET"
//
//        let task = URLSession(configuration: .default)
//        task.dataTask(with: urlRequest) { data, _, error in
//
//            if let error = error {
//                completions(.failure(error))
//            }
//
//            if let data = data , let decoder = try?  JSONDecoder().decode([Model].self, from: data) {
//
//                completions(.success(decoder))
//            } else {
//                print("Cant get Data or Decode Data!")
//            }
//        }.resume()
//
//    }
    
    //https://jsonplaceholder.typicode.com/posts?userId=1
    
    func userByID(completions: @escaping((Result<[Model],Error>) -> Void), userID:String = "") {
        
        var urlString = "https://jsonplaceholder.typicode.com/posts"
        if userID != "" {
            urlString = urlString + "?userId=\(userID)"
        }
        guard let url = URL(string: urlString) else { return }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "GET"
        
        let task = URLSession(configuration: .default)
        task.dataTask(with: urlRequest) { data, _, error in
            
            if let error = error {
                completions(.failure(error))
            }
            
            if let data = data , let decoder = try?  JSONDecoder().decode([Model].self, from: data) {
                
                completions(.success(decoder))
            } else {
                print("Cant get Data or Decode Data!")
            }
        }.resume()
        
    }
    
    
    //MARK: - Facade
    
    func userPostAndUserPostByID(completion: @escaping((Result<[Model],Error>) -> Void),userID:String) {
        
    }
    
}


