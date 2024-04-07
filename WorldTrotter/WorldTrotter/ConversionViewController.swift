//
//  ViewController.swift
//  WorldTrotter
//
//  Created by David Pavlic on 03.04.2024.
//

import UIKit

class ConversionViewController: UIViewController {
    
    var myRandomLayer = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myRandomLayer.backgroundColor = CGColor.init(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0...1))
        myRandomLayer.transform = CATransform3DMakeRotation(CGFloat.pi / 2, 0, 0, 1)
        
        view.layer.insertSublayer(myRandomLayer, at: 0)
        
        print("ConversionViewController loaded its view")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myRandomLayer.frame = view.bounds
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        myRandomLayer.backgroundColor = CGColor.init(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0...1))
    }
    
    
    
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

