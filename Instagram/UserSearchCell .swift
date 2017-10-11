//
//  UserSearchCell .swift
//  Instagram
//
//  Created by Amar Bhatia on 10/11/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import UIKit

class UserSearchCell: BaseCell {
    
    var user: UserModel? {
        didSet {
            usernameLabel.text = user?.username
            guard let profileImageUrl = user?.profileImageUrl else { return }
            profileImageView.loadImage(urlString: profileImageUrl)
        }
    }
    
    let profileImageView: CustomImageView = {
        let iv = CustomImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "Username"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    override func setupView() {
        super.setupView()
        
        backgroundColor = .white
        
        addSubview(profileImageView)
        addSubview(usernameLabel)
        
        
        _ = profileImageView.anchor(nil, left: leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 8, widthConstant: 50, heightConstant: 50)
        profileImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        profileImageView.layer.cornerRadius = 50 / 2
        
        _ = usernameLabel.anchor(topAnchor, left: profileImageView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        let seperatorView = UIView()
        seperatorView.backgroundColor = UIColor(white: 0, alpha: 0.5)
        addSubview(seperatorView)
        _ = seperatorView.anchor(nil, left: usernameLabel.leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
        
    }
}
