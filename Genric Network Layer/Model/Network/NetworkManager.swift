//
//  NetworkManager.swift
//  Genric Network Layer
//
//  Created by ahmedpro on 6/15/20.
//  Copyright © 2020 iti. All rights reserved.
//

import Foundation
import Alamofire


func invokePostWithObject<O: Codable, T: Codable>(urlString: String, objectToPost: O, onCompilition: @escaping (T) -> Void, onError: @escaping (String) -> Void) {
    print(urlString)
    AF.request(urlString, method: .post, parameters: objectToPost, encoder: JSONParameterEncoder.default, requestModifier: {$0.timeoutInterval = 20}).responseJSON { (response) in
        switch response.result {
        case .success( _):
            print("successed")
            let jsonParser = JsonParser<T>()
            if let parsedObject = jsonParser.parseObjectJson(jsonData: response.data!) {
                DispatchQueue.main.async {
                    onCompilition(parsedObject)
                }
            } else {
                onError("error")
            }
            
        case .failure(let error):
            print(error)
        }
    }
}

func invokePostWithParamter<T: Codable>(urlString: String, onCompilition: @escaping (T) -> Void, onError: @escaping (String) -> Void) {
    
    AF.request(urlString, method: .post, requestModifier: {$0.timeoutInterval = 20}).responseJSON { (response) in
        switch response.result {
        case .success( _):
            print("successed")
            let jsonParser = JsonParser<T>()
            if let parsedObject = jsonParser.parseObjectJson(jsonData: response.data!) {
                DispatchQueue.main.async {
                    onCompilition(parsedObject)
                }
            } else {
                onError("error")
            }
            
        case .failure(let error):
            print(error)
        }
    }
}
