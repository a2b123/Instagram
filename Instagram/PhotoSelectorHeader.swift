//
//  PhotoSelectorHeader.swift
//  Instagram
//
//  Created by Amar Bhatia on 9/10/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import UIKit

class PhotoSelectorHeader: UICollectionViewCell {
    
    let photoImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .cyan
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(photoImageView)
        _ = photoImageView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
