//
//  UserDataService.swift
//  Smack
//
//  Created by ronak chhatbar on 27/12/17.
//  Copyright © 2017 ronak chhatbar. All rights reserved.
//

import Foundation
class UserDataService
{
    
    static let instance = UserDataService()
    public private(set) var  id = ""
    public private(set) var  avatarColor = ""
    public private(set) var  avatarName = ""
    public private(set) var  email = ""
    public private(set) var  name = ""
    
    func setUserData(id: String,avatarColor : String,avatarName : String,email : String,name : String){
        self.id = id
        self.name = name
        self.avatarName = avatarName
        self.avatarColor = avatarColor
        self.email = email
        
    }
    func avatarName (avatarName :String)
    {
        self.avatarName = avatarName
    }
    
    
    
}
