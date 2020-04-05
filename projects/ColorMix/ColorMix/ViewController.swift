//
//  ViewController.swift
//  ColorMix
//
//  Created by Charles Wallin on 4/3/20.
//  Copyright © 2020 Charles Wallin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
        
    }
    
    func updateColor() {
        var red: CGFloat = 0
            var green: CGFloat = 0
            var blue: CGFloat = 0
        
            if redSwitch.isOn {
                red = CGFloat(redSlider.value)
            }
            if greenSwitch.isOn {
                green = CGFloat(greenSlider.value)
            }
            if blueSwitch.isOn {
                blue = CGFloat(blueSlider.value)
            }
            
            let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
            
            colorView.backgroundColor = color
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
        
    }
}

