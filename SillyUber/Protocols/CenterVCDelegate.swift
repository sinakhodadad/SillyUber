//
//  CenterVCDelegate.swift
//  SillyUber
//
//  Created by sinahk on 5/7/19.
//  Copyright © 2019 ir.sinakhodadad. All rights reserved.
//

import UIKit

protocol CenterVCDelegate {
    func toggleLeftPanel()
    func addLeftPanelViewController()
    // true -> open; false -> close
    func animateLeftPanel(shouldExpand: Bool)
    
    
}
