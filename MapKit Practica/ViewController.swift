//
//  ViewController.swift
//  MapKit Practica
//
//  Created by Eduardo on 21/7/18.
//  Copyright © 2018 Eduardo Jordan Muñoz. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
// Conectar el mapa
    @IBOutlet weak var mapYou: MKMapView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
   // tipo de Mapa
        mapYou.mapType = MKMapType.standard
   // coordenadas del mapa
        let location = CLLocationCoordinate2D(latitude:  41.648823, longitude: -0.889085)
        
        let span = MKCoordinateSpanMake(0.05, 0.05)
        
        let region = MKCoordinateRegion(center: location, span: span)
        mapYou.setRegion(region, animated: true)
        
        
        
        // Indicar con chincheta
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = " Territorio Maño "
        annotation.subtitle = "¡Que viva la pilarica!"
        mapYou.addAnnotation(annotation)
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

