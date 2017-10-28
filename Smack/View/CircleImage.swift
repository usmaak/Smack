//
//  CircleImage.swift
//  Smack
//
//  Created by Scott Kilbourn on 10/27/17.
//  Copyright © 2017 Scott Kilbourn. All rights reserved.
//

import UIKit

@IBDesignable class CircleImage: UIImageView {
    override func awakeFromNib() {
        setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width/2
        self.clipsToBounds = true
    }

}
