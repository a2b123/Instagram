//
//  CommentCell.swift
//  Instagram
//
//  Created by Amar Bhatia on 10/16/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import UIKit

class CommentCell: BaseCell {
    
    var comment: CommentModel? {
        didSet {
            textLabel.text = comment?.text
        }
    }
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        label.backgroundColor = .lightGray
        return label
    }()
    
    override func setupView() {
        super.setupView()
        backgroundColor = .yellow
        
        addSubview(textLabel)
        _ = textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 4, leftConstant: 4, bottomConstant: 4, rightConstant: 4, widthConstant: 0, heightConstant: 0)
    }
}






