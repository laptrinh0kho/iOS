//
//  ViewController.swift
//  TapGesutre
//
//  Created by THAI LE QUANG on 6/18/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var isPig = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapGesture_Clicked(_ sender: UITapGestureRecognizer) {
        
        if isPig {
            imageView.image = UIImage(named: "cat.jpg")
        } else {
            imageView.image = UIImage(named: "pig.png")
        }
        
        isPig = !isPig
    }
    
}

