//
//  BaseCell.swift
//  Instagram
//
//  Created by Amar Bhatia on 9/9/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView() {
        backgroundColor = .cyan
    }
}


