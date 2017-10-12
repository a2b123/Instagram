//
//  Post.swift
//  Instagram
//
//  Created by Amar Bhatia on 9/12/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import Foundation

struct Post {
    let user: UserModel
    let imageUrl: String
    let caption: String
    let creationDate: Date
    
    
    init(user: UserModel, dictionary: [String: Any]) {
        self.user = user
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
        
        let secondsFrom1970 = dictionary["creationDate"] as? Double ?? 0
        self.creationDate = Date(timeIntervalSince1970: secondsFrom1970)

    }
}
