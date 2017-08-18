//
//  ViewController.swift
//  ForTesting
//
//  Created by Normand Martin on 17-08-18.
//  Copyright © 2017 Normand Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var testLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    func shakeView(vw: UIView) {
        
        let animation = CAKeyframeAnimation()
        
        animation.keyPath = "position.x"
        
        animation.values = [0, 10, -10, 10, -5, 5, -5, 0 ]
        
        animation.keyTimes = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1]
        
        animation.duration = 0.4
        
        animation.isAdditive = true
        
        vw.layer.add(animation, forKey: "shake")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

