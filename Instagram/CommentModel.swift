//
//  CommentModel.swift
//  Instagram
//
//  Created by Amar Bhatia on 10/17/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import Foundation

struct CommentModel {
    var user: UserModel
    
    let text: String
    let uid: String
    
    init(user: UserModel, dictionary: [String: Any]) {
        self.user = user
        self.text = dictionary["text"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}
