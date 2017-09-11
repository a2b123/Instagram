//
//  PhotoSelectorCell.swift
//  Instagram
//
//  Created by Amar Bhatia on 9/9/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import UIKit

class PhotoSelectorCell: BaseCell {
    
    let photoImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .lightGray
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    override func setupView() {
        super.setupView()
        
        backgroundColor = .brown
        
        addSubview(photoImageView)
        _ = photoImageView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
