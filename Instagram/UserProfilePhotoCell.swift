//
//  UserProfilePhotoCell.swift
//  Instagram
//
//  Created by Amar Bhatia on 9/13/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import UIKit

class UserProfilePhotoCell: BaseCell {
    
    var post: Post? {
        didSet {
            guard let imageUrl = post?.imageUrl else { return }
            guard let urlImage = URL(string: imageUrl) else { return }
            
            URLSession.shared.dataTask(with: urlImage) { (data, response, error) in
                if let error = error {
                    print("Failed to fetch posts audio or image", error)
                    return
                }
                
                guard let imageData = data else { return }
                let photoImage = UIImage(data: imageData)
                
                DispatchQueue.main.async {
                    self.photoImageView.image = photoImage
                }
            }.resume()
        }
    }
    
    let photoImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    override func setupView() {
        super.setupView()
        
        addSubview(photoImageView)
        _ = photoImageView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
}