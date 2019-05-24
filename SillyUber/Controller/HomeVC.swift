//
//  HomeVC.swift
//  SillyUber
//
//  Created by sinahk on 4/18/19.
//  Copyright © 2019 ir.sinakhodadad. All rights reserved.
//
//  for adding -> Cocoa touch Class -> subclassof: UIViewController


import UIKit
import MapKit

class HomeVC: UIViewController, MKMapViewDelegate {
    
    
    var delegate: CenterVCDelegate?

    // from main story board mapViewOutlet -> import Mapkit -> MKMapViewDelegate -> mapView.delegate = self
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var actionButton: RoundedShadowButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }
    
    @IBAction func actionButtonPressed(_ sender: Any) {
        actionButton.animateButton(shouldLoad: true, withMessage: nil)
    }
    
    @IBAction func menuBtnPrssd(_ sender: Any) {
        delegate?.toggleLeftPanel()
    }
    


}

