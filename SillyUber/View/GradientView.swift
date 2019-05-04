//
//  GradientView.swift
//  SillyUber
//
//  Created by sinahk on 4/30/19.
//  Copyright © 2019 ir.sinakhodadad. All rights reserved.
//

// for adding -> Cocoa touch Class -> subclassof: UIView

import UIKit

class GradientView: UIView {
    
    let gradient = CAGradientLayer()
    
    // after eth loads (interfacebuilder) sets up whatever init
    override func awakeFromNib() {
        setupGradientView()
    }
    
    // for setting up the frame
    func setupGradientView(){
        
        // gradient is a layer that will take place on top of the UIView so we want to
        // set the gradient frame as the size of whatever view it is on
        gradient.frame = self.bounds
        
        // what color gradient should have
        gradient.colors = [UIColor.white.cgColor, UIColor.init(white: 1.0, alpha: 0.5)]
        
        // telling it where it should start and end
        // startpoint is CGPoint because the screen is a big graph
        // left up corner is (0,0)
        
        // here we start with entire top zero
        gradient.startPoint = CGPoint.zero
        
        gradient.endPoint = CGPoint(x: 0, y: 1)
        
        // where solid white stops and where transulent white stops
        // 1st is UIColor.white.cgColor & 2nd is UIColor.init(white: 1.0, alpha: 0.5)
        // 1st go to 80% and 2nd 100%
        gradient.locations = [0.8, 1.0]
        
        self.layer.addSublayer(gradient)
    }
   
}
