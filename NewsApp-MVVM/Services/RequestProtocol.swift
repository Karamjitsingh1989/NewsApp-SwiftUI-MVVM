//
//  RequestProtocol.swift
//  NewsApp-MVVM
//
//  Created by Karamjit Singh on 01/02/23.
//

import Foundation




protocol RequestProtocol {
     
    func fetchData(url:String, completion:@escaping(Result<Data, APIError>)-> Void)
}
protocol ResponseModel {
    
    func fetchModel<T:Codable>(data: Data, type:T.Type, completion:@escaping(Result<T, APIError>)-> Void)
}

