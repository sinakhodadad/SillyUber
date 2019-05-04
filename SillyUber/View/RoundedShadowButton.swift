//
//  RoundedShadowButton.swift
//  SillyUber
//
//  Created by sinahk on 5/4/19.
//  Copyright © 2019 ir.sinakhodadad. All rights reserved.
//

// for adding -> Cocoa touch Class -> subclassof: UIButton
// we animate the button into circle and back to its real size :)



import UIKit

class RoundedShadowButton: UIButton {
    
    var originalSize: CGRect?
    
    func setupView(){
        originalSize = self.frame
        self.layer.cornerRadius = 5.0
        self.layer.shadowRadius = 10.0
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOpacity = 0.3
        
        // right in center
        self.layer.shadowOffset = CGSize.zero
    }
    
    func animateButton(shouldLoad: Bool, withMessage message: String?){
        if shouldLoad {
            self.setTitle("", for: .normal)
            UIView.animate(withDuration: 0.2, animations: {
                self.layer.cornerRadius = self.frame.height / 2
                
                // we want to put it in middle of button
                // 1st run with midX and then midX-()
                self.frame = CGRect(x: self.frame.midX - (self.frame.height / 2) , y: self.frame.origin.y, width: self.frame.height, height: self.frame.height)
            }, completion: {(finished) in
                if finished == true{
                    
                }
            })
        }
        
    }

}
