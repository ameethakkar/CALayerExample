//
//  ViewController.swift
//  CALayerExample
//
//  Created by Amee Thakkar on 6/19/18.
//  Copyright © 2018 Amee Thakkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // to give background color to view layer
        myView.layer.backgroundColor = UIColor.black.cgColor
        
        // to give background color to view
        myView.backgroundColor = .yellow
        
        // layer border
        myView.layer.borderWidth = 5
        myView.layer.borderColor = UIColor.cyan.cgColor
        
        // rounded corner
        // For circle give radius = half of the length
        myView.layer.cornerRadius = 125
        
        //add shadow
        myView.layer.shadowOffset = CGSize(width: -25, height: 25)
        myView.layer.shadowOpacity = 0.5
        myView.layer.shadowColor = UIColor.darkGray.cgColor
        
        //add layer content
        myView.layer.contents = UIImage(named: "Pepsi")?.cgImage
        myView.layer.masksToBounds = true
        
        //If your image is too big and you want it in center
        myView.layer.contentsGravity = kCAGravityCenter
        
        //add sublayer
        let layer = CALayer()
        layer.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        layer.backgroundColor = UIColor.blue.cgColor
        layer.cornerRadius = 40
        layer.masksToBounds = true
        myView.layer.addSublayer(layer)
        
        //add gradiemt layer
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = myView.bounds
        // you can add as many colors as you want in the bracket
        gradientLayer.colors = [UIColor.black.cgColor, UIColor.red.cgColor]
        myView.layer.addSublayer(gradientLayer)
        //to flip the order of gradient
        myView.layer.isGeometryFlipped = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

