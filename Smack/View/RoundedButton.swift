//
//  RoundedButton.swift
//  Smack
//
//  Created by ronak chhatbar on 27/12/17.
//  Copyright © 2017 ronak chhatbar. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedButton: UIButton {

@IBInspectable var cornerRadius : CGFloat = 5.0
{
didSet
{
self.layer.cornerRadius = cornerRadius
}
}
    override func awakeFromNib() {
        self.setupView()
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
func setupView()
{self.layer.cornerRadius = cornerRadius
    
    }




}


