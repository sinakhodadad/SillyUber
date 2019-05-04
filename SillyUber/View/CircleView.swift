//
//  CircleView.swift
//  SillyUber
//
//  Created by sinahk on 5/4/19.
//  Copyright © 2019 ir.sinakhodadad. All rights reserved.
//

// for adding -> Cocoa touch Class -> subclassof: UIView

import UIKit

class CircleView: UIView {
    
    // we want two have one class with different features
    @IBInspectable var borderColor: UIColor? {
        didSet{
            setupView()
        }
    }
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView()  {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.borderWidth = 1.5
        self.layer.borderColor = borderColor?.cgColor
        
    }
    
    
    // now you have the property of BorderColor in mainStoryBoard
    

}
