//
//  ViewController.swift
//  SwitchExample
//
//  Created by THAI LE QUANG on 6/3/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageBackground: UIImageView!
    
    @IBAction func switch_valueChanged(_ sender: UISwitch) {
        if sender.isOn {
            imageBackground.image = UIImage(named: "1.jpg")
        } else {
            imageBackground.image = UIImage(named: "2.jpeg")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

