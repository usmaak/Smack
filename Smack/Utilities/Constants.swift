//
//  Constants.swift
//  Smack
//
//  Created by Scott Kilbourn on 10/21/17.
//  Copyright © 2017 Scott Kilbourn. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//User DefaultsFoundation
let TOKEN_KEY = "token"
let LOGGED_INKEY = "loggedIn"
let USER_EMAIL = "userEmail"

//URL Constants
let BASE_URL = "https://chattychatchatsdk.herokuapp.com/V1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

//Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
