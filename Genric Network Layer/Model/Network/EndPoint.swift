//
//  EndPoint.swift
//  Genric Network Layer
//
//  Created by ahmedpro on 6/15/20.
//  Copyright © 2020 iti. All rights reserved.
//

import Foundation

private let baseURL = "https://wedlockapp.azurewebsites.net/api/"

indirect enum EndPoint {
    case login
    case register
    case countries
    case allVenues(userId: Int, pageNumber: Int)
}

func getURL(endPoint: EndPoint) -> String {
    switch endPoint {
    case .login:
        return baseURL + "AppUser/user/login"
    case .register:
        return baseURL + "AppUser/user/registerUser"
    case .countries:
        return baseURL + "general/countries"
    case .allVenues(let userId, let pageNumber):
        return baseURL + "Venue/AllVenueBranches?userID=\(userId)&page=\(pageNumber)"
    }
}
