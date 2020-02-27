//
//  ViewController.swift
//  HW2.1.2
//
//  Created by Михаил Малышев on 25/02/2020.
//  Copyright © 2020 Mikhail Malyshev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yeallowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor.layer.cornerRadius = 50
        yeallowColor.layer.cornerRadius = 50
        greenColor.layer.cornerRadius = 50
        button.layer.cornerRadius = 10
        
        redColor.alpha = 0.3
        yeallowColor.alpha = 0.3
        greenColor.alpha = 0.3
        
    }
    
    @IBAction func buttonPressed() {
            button.setTitle("NEXT", for: .normal)
            greenColor.alpha = 1
        if redColor.alpha == 1 {
            redColor.alpha = 0.3
            yeallowColor.alpha = 1
            greenColor.alpha = 0.3
        } else if yeallowColor.alpha == 1 {
            redColor.alpha = 0.3
            yeallowColor.alpha = 0.3
            greenColor.alpha = 1
        } else if greenColor.alpha == 1 {
            redColor.alpha = 1
            yeallowColor.alpha = 0.3
            greenColor.alpha = 0.3
        }
    }
}

