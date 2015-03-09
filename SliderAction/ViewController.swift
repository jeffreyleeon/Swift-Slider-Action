//
//  ViewController.swift
//  SliderAction
//
//  Created by Jeffrey on 9/3/15.
//  Copyright (c) 2015 Jeffrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label : UILabel!
    @IBOutlet weak var mySlider : UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        mySlider.addTarget(self, action: Selector("sliderChanged:"), forControlEvents: UIControlEvents.ValueChanged)
    }

    func sliderChanged(slider : UISlider) {
        var value : Float  = slider.value
        label.text = String(format: "%.2f", value)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

