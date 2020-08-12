//
//  LoginEntity.swift
//  Project
//
//  Created by AppleMac on 02/08/20.
//  Copyright © 2020 css. All rights reserved.
//

import Foundation
import ObjectMapper

struct LoginReq : Codable{
    var device_type : String = "iOS"
    var device_token  : String = ""
    var device_id  : String? = ""
    var client_id : Int = appClientId
    var client_secret : String = appSecretKey
    var grant_type : String = "password"
    var username : String?
    var password : String?
}

struct signupReq : Codable{
    var device_type : String = "ios"
    var device_token  : String = "12345"
    var login_by  : String? = "manual"
    var client_id : Int = appClientId
    var client_secret : String = appSecretKey
    var email : String = ""
    var mobile : String?
    var password : String?
    var name : String?
    var dob : String?
    var password_confirmation : String?
    var device_id : String = "11"
}

struct LoginEntity : Mappable {
    var token_type : String?
    var expires_in : Int?
    var access_token : String?
    var refresh_token : String?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        
        token_type <- map["token_type"]
        expires_in <- map["expires_in"]
        access_token <- map["access_token"]
        refresh_token <- map["refresh_token"]
    }
    
}

struct signupEntity : Mappable {
    var device_type : String?
    var device_token : String?
    var login_by : String?
    var email : String?
    var mobile : String?
    var social_unique_id : String?
    var device_id : String?
    var dob : String?
    var first_name : String?
    var payment_mode : String?
    var id : Int?
    var accesstoken : String?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        
        device_type <- map["device_type"]
        device_token <- map["device_token"]
        login_by <- map["login_by"]
        email <- map["email"]
        mobile <- map["mobile"]
        social_unique_id <- map["social_unique_id"]
        device_id <- map["device_id"]
        dob <- map["dob"]
        first_name <- map["first_name"]
        payment_mode <- map["payment_mode"]
        id <- map["id"]
        accesstoken <- map["accesstoken"]
    }
    
}
