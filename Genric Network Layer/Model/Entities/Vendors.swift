//
//  Vendors.swift
//  wedlock_ios
//
//  Created by ahmedpro on 5/18/20.
//  Copyright © 2020 iti. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct Vendors: Codable {
    let listVendors: [Vendor]
    
    enum CodingKeys: String, CodingKey {
        case listVendors = "result"
    }
    
    static func decodeVenues(data: Data) -> Vendors? {
        return try? newJSONDecoder().decode(Vendors.self, from: data)
    }
    
    private static func newJSONDecoder() -> JSONDecoder {
        let decoder = JSONDecoder()
        if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
            decoder.dateDecodingStrategy = .iso8601
        }
        return decoder
    }
}

// MARK: - Result
struct Vendor: Codable {
    let id: Int
    let categoryNameEn, categoryNameAr: String
    let categoryImage: String

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case categoryNameEn = "CategoryNameEn"
        case categoryNameAr = "CategoryNameAr"
        case categoryImage = "CategoryImage"
    }
}
