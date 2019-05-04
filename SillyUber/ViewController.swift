//
//  ViewController.swift
//  SillyUber
//
//  Created by sinahk on 4/18/19.
//  Copyright © 2019 ir.sinakhodadad. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    // from main story board mapViewOutlet -> import Mapkit -> MKMapViewDelegate -> mapView.delegate = self
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }


}

