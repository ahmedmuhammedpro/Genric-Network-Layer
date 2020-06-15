//
//  User.swift
//  wedlock_ios
//
//  Created by ahmedpro on 5/14/20.
//  Copyright © 2020 iti. All rights reserved.
//

import Foundation

struct User: Codable {
    var email, password, phone, fullName: String?
    var gender, deviceType: Int?
    var userID, userRoleID, countryID, cityID: Int?
    var userType: Int?
    var guidToken, socialID, socialToken: String?
    var profilePicture, about: String?
    var isVerified, isActive, isEnabled: Bool?
    var deviceToken: String?
    var registrationDate: String?
    
    init(email:String,password:String) {
        self.email = email
        self.password = password
    }
    
    init(email: String, password: String, phone: String, fullName: String, gender:Int, deviceType: Int) {
        self.email = email
        self.password = password
        self.phone = phone
        self.fullName = fullName
        self.gender = gender
        self.deviceType = deviceType
    }
    
    init(email: String, password: String, phone: String, fullName: String, gender:Int, deviceType: Int, userID: Int, userRoleID: Int, countryID: Int, cityID: Int, userType: Int,  guidToken: String, socialID: String, socialToken: String, profilePicture: String, about: String, isVerified: Bool, isActive: Bool, isEnabled: Bool, deviceToken: String, registrationDate: String) {
        self.email = email
        self.password = password
        self.phone = phone
        self.fullName = fullName
        self.gender = gender
        self.deviceType = deviceType
        self.userID = userID
        self.userRoleID = userRoleID
        self.countryID = countryID
        self.cityID = cityID
        self.userType = userType
        self.guidToken = guidToken
        self.socialID = socialID
        self.socialToken = socialToken
        self.profilePicture = profilePicture
        self.about = about
        self.isVerified = isVerified
        self.isActive = isActive
        self.isEnabled = isEnabled
        self.deviceToken = deviceToken
        self.registrationDate = registrationDate
    }
}
