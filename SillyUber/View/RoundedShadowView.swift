//
//  RoundedShadowView.swift
//  SillyUber
//
//  Created by sinahk on 5/4/19.
//  Copyright © 2019 ir.sinakhodadad. All rights reserved.
//

// for adding -> Cocoa touch Class -> subclassof: UIView


import UIKit

class RoundedShadowView: UIView {
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = 5
        self.layer.shadowOpacity = 0.3
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 5.0
        
        // shadow on bottom than top
        self.layer.shadowOffset = CGSize(width: 0, height: 5)
    }
}
