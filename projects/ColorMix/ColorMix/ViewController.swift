//
//  ViewController.swift
//  ColorMix
//
//  Created by Charles Wallin on 4/5/20.
//  Copyright © 2020 Charles Wallin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ColorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ColorView.layer.borderWidth = 5
        ColorView.layer.cornerRadius = 20
        ColorView.layer.borderColor = UIColor.black.cgColor
    }

    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
        
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue : CGFloat = 0
        
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
        ColorView.backgroundColor = color
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        
        updateColor()
        
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
}

