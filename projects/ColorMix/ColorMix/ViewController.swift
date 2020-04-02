//
//  ViewController.swift
//  ColorMix
//
//  Created by Charles Wallin on 4/2/20.
//  Copyright © 2020 Charles Wallin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = .black
    }
    
    @IBOutlet weak var colorView: UIView!
    

    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            colorView.backgroundColor = .red
        } else {
            colorView.backgroundColor = .black
        }
    }
}

