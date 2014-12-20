//
//  FirstViewController.swift
//  mmercier42
//
//  Created by swift on 20/12/14.
//  Copyright (c) 2014 Mike Mercier. All rights reserved.
//

import UIKit

import MapKit

class FirstViewController: UIViewController, MKMapViewDelegate {
    
    
    
    @IBOutlet weak var theMapView: MKMapView!
    
    
    
    
    @IBOutlet weak var viewButton: UISegmentedControl!
    
    @IBAction func viewEvent(sender: AnyObject) {
        
    if viewButton.selectedSegmentIndex == 0 {theMapView.mapType = MKMapType.Standard}
        
    if viewButton.selectedSegmentIndex == 1 {theMapView.mapType = MKMapType.Satellite}
        
    if viewButton.selectedSegmentIndex == 2 {theMapView.mapType = MKMapType.Hybrid}
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        var latitude:CLLocationDegrees = 48.896660
        
        var longitude:CLLocationDegrees = 2.318542
        
        
        
        var latDelta:CLLocationDegrees = 0.001
        
        var longDelta:CLLocationDegrees = 0.001
        
        
        
        
        
        
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        
        
        var schoolLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(schoolLocation, theSpan)
        
        
        
        self.theMapView.setRegion(theRegion, animated: true)
        
        
        
        var SchoolAnnotation = MKPointAnnotation()
        
        
        
        SchoolAnnotation.coordinate = schoolLocation
        
        
        
        SchoolAnnotation.title = "Ecole 42"
        
        SchoolAnnotation.subtitle = "Is for the Braves"
        
        
        
        self.theMapView.addAnnotation(SchoolAnnotation)
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
}