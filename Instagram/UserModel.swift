//
//  UserModel.swift
//  Instagram
//
//  Created by Amar Bhatia on 10/9/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import Foundation

struct UserModel {
    let username: String
    let profileImageUrl: String
    let uid: String
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        self.username = dictionary["Username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
