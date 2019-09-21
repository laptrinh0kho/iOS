//
//  ViewController.swift
//  AnimateDog
//
//  Created by THAI LE QUANG on 6/6/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func valueChanged(_ sender: UISlider) {
        let value = sender.value
        
        let intValue = Int(value)
        
        dogImage.image = UIImage(named: "\(intValue).png")
    }
    

}

