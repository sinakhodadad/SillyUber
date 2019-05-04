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
    
    override func awakeFromNib() {
        setupView()
    }
    
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
        
        let spinner = UIActivityIndicatorView()
        spinner.style = .whiteLarge
        spinner.color = UIColor.darkGray
        spinner.alpha = 0.0
        spinner.hidesWhenStopped = true
        spinner.tag = 21
        
        if shouldLoad {
            self.addSubview(spinner)
            self.setTitle("", for: .normal)
            UIView.animate(withDuration: 0.2, animations: {
                self.layer.cornerRadius = self.frame.height / 2
                
                // we want to put it in middle of button
                // 1st run with midX and then midX-()
                self.frame = CGRect(x: self.frame.midX - (self.frame.height / 2) , y: self.frame.origin.y, width: self.frame.height, height: self.frame.height)
            }, completion: {(finished) in
                if finished == true{

                    spinner.startAnimating()
                    // exactly center +1
                    spinner.center = CGPoint(x: self.frame.width / 2 + 1, y: self.frame.width/2 + 1)
                    UIView.animate(withDuration: 0.2, animations: {
                        spinner.alpha = 1.0
                    })
                    
                }
            })
            // don't let user click on button
            self.isUserInteractionEnabled = false
        } else {
            self.isUserInteractionEnabled = true
            
            for subview in self.subviews{
                //remove subview 21 e.g.
                if subview.tag == 21{
                    subview.removeFromSuperview()
                }
                
            }
            UIView.animate(withDuration: 0.2, animations: {
                self.layer.cornerRadius = 5.0
                self.frame = self.originalSize!
                self.setTitle(message, for: .normal)
            })
            
            
        }
        
        
    }

}

// Add IBAction of Button to Main.storyboard for function
// Add IBOutlet of Button for animation
