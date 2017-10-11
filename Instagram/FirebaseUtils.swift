//
//  FirebaseUtils.swift
//  Instagram
//
//  Created by Amar Bhatia on 10/11/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import Foundation
import Firebase

extension Database {
    static func fetchUserWithUID(uid: String, completion: @escaping (UserModel) -> ()) {
        Database.database().reference().child("Users").child(uid).observe(.value, with: { (snapshot) in
            guard let userDictionary = snapshot.value as? [String: Any] else { return }
            let user = UserModel(uid: uid, dictionary: userDictionary)
            completion(user)
            
        }) { (err) in
            print("Failed to fetch user for posts:", err)
        }
    }
}
