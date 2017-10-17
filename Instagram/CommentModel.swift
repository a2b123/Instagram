//
//  CommentModel.swift
//  Instagram
//
//  Created by Amar Bhatia on 10/17/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import Foundation

struct CommentModel {
    let text: String
    let uid: String
    
    init(dictionary: [String: Any]) {
        self.text = dictionary["text"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}
