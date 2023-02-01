//
//  ResponseHandler.swift
//  NewsApp-MVVM
//
//  Created by Karamjit Singh on 01/02/23.
//

import Foundation

class ResponseHandler: ResponseModel {
    
    func fetchModel<T>(data: Data, type: T.Type, completion: @escaping (Result<T, APIError>) -> Void) where T : Decodable, T : Encodable {
        if let modelObject = try? JSONDecoder().decode(type.self, from: data) {
            completion(.success(modelObject))
        }
        completion(.failure(.decodingError))
    }
}
