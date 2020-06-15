//
//  Welcome.swift
//  wedlock_ios
//
//  Created by ahmedpro on 5/17/20.
//  Copyright © 2020 iti. All rights reserved.
//

import Foundation

struct Countries: Codable {
    let list: [Country]
    
    enum CodingKeys: String, CodingKey {
        case list = "result"
    }
    
    static func decodeUser(data: Data) -> Countries? {
        return try? newJSONDecoder().decode(Countries.self, from: data)
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
struct Country: Codable {
    let cities: [City]
    let currency: Currency
    let id: Int
    let countryNameEn, countryNameAr, countryCode, countryFlag: String
    let countryPhone: String
    let currencyID: Int

    enum CodingKeys: String, CodingKey {
        case cities = "Cities"
        case currency = "Currency"
        case id = "ID"
        case countryNameEn = "CountryNameEn"
        case countryNameAr = "CountryNameAr"
        case countryCode = "CountryCode"
        case countryFlag = "CountryFlag"
        case countryPhone = "CountryPhone"
        case currencyID = "CurrencyID"
    }
}

// MARK: - City
struct City: Codable {
    let id, countryID: Int
    let cityCode: Int?
    let cityNameEn, cityNameAr: String

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case countryID = "CountryID"
        case cityCode = "CityCode"
        case cityNameEn = "CityNameEn"
        case cityNameAr = "CityNameAr"
    }
}

// MARK: - Currency
struct Currency: Codable {
    let id: Int
    let currencyCode: String

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case currencyCode = "CurrencyCode"
    }
}
