//
//  Post.swift
//  Instagram
//
//  Created by Amar Bhatia on 9/12/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import Foundation

struct Post {
    let imageUrl: String
    
    init(dictionary: [String: Any]) {
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
    }
}
