//
//  RoundImageView.swift
//  SillyUber
//
//  Created by sinahk on 5/4/19.
//  Copyright © 2019 ir.sinakhodadad. All rights reserved.
//

// for adding -> Cocoa touch Class -> subclassof: UIImageView

import UIKit

class RoundImageView: UIImageView {
    
    override func awakeFromNib() {
        setupView()
    }

    func setupView(){
        
        // for round radious should be exactly half of heigth and width
        self.layer.cornerRadius = self.frame.width / 2
        
        self.clipsToBounds = true
        
        // after this always you should set IBDesignable, IBInspectable
    }

}
