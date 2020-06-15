//
//  JsonParser.swift
//  Genric Network Layer
//
//  Created by ahmedpro on 6/15/20.
//  Copyright © 2020 iti. All rights reserved.
//

import Foundation

class JsonParser<T: Codable> {
    
    func parseArrayOfJson(jsonData: Data) -> [T]? {
        var parcedArray : [T]? = nil
        do{
            parcedArray = try? JSONDecoder().decode([T].self, from: jsonData)
        }
        return parcedArray
    }
    
    func parseObjectJson(jsonData: Data) -> T? {
        var parcedObject : T? = nil
        do{
            parcedObject = try? JSONDecoder().decode(T.self, from: jsonData)
        }
        return parcedObject
    }
    
}
