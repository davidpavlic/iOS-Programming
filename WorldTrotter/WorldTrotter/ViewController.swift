//
//  ViewController.swift
//  WorldTrotter
//
//  Created by David Pavlic on 03.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    //Added horizontal gradient as background
    /*var gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.red.cgColor,
                                UIColor.yellow.cgColor,
                                UIColor.green.cgColor,
                                UIColor.blue.cgColor]
        gradientLayer.transform = CATransform3DMakeRotation(CGFloat.pi / 2, 0, 0, 1)
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = view.bounds
    }*/
    
    //Playing around with adding views
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
        let firstView = UIView(frame: firstFrame)
        firstView.backgroundColor = UIColor.blue
        view.addSubview(firstView)
        
        let secondFrame = CGRect(x: 20, y: 30, width: 50, height: 50)
        let secondView = UIView(frame: secondFrame)
        secondView.backgroundColor = UIColor.green
        firstView.addSubview(secondView)
    }*/
    
}

