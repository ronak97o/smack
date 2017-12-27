//
//  Constants.swift
//  Smack
//
//  Created by ronak chhatbar on 25/12/17.
//  Copyright © 2017 ronak chhatbar. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success : Bool ) -> ()

//URL constants
let BASE_URL = "https://smack0.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN  = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"


//Segues
let To_lOGIN = "toLogin"
let To_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_CREATE_AVATAR = "toAvatarPicker"


//USER DEFAULTS
let TOKEN_KEY  = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Headers
let HEADER = [
    "Content-Type" : "application/json; charset=utf-8"
]

//Seague


