//
//  Response.swift
//  Genric Network Layer
//
//  Created by ahmedpro on 6/15/20.
//  Copyright © 2020 iti. All rights reserved.
//

import Foundation

struct ResponseObject<T: Codable> {
    let result: T
}

struct ResponseArray<T: Codable>: Codable {
    let result: [T]
}
