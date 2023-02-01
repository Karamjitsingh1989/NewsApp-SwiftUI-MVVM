//
//  APIHandler.swift
//  NewsApp-MVVM
//
//  Created by Karamjit Singh on 01/02/23.
//

import Foundation

class APIHandler: RequestProtocol {
    
    func fetchData(url: String, completion: @escaping (Result<Data, APIError>) -> Void) {
        guard let url = URL(string: url) else {
            completion(.failure(.badURL))
            return
        }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(.noData))
                return
            }
            completion(.success(data))
        }.resume()
    }
}
