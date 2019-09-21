//
//  ViewController.swift
//  Stepper
//
//  Created by THAI LE QUANG on 6/17/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func valueChange(_ sender: UIStepper) {
        valueLabel.text = "\(Int(sender.value))"
    }
    
}

