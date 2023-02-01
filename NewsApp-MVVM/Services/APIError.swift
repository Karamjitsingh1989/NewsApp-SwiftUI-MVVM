//
//  APIError.swift
//  NewsApp-MVVM
//
//  Created by Karamjit Singh on 01/02/23.
//

import Foundation

enum APIError: Error {
    case badURL
    case noData
    case decodingError
    case unknown
}
