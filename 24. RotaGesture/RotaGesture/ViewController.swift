//
//  ViewController.swift
//  RotaGesture
//
//  Created by THAI LE QUANG on 6/18/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var lastRotation: CGFloat = 0
    @IBAction func handleRotation(_ sender: UIRotationGestureRecognizer) {
        var originalRotation = CGFloat()
        if sender.state == .began {
            print("began")
            sender.rotation = lastRotation
            originalRotation = sender.rotation
        } else if sender.state == .changed {
            print("changing")
            let newRotation = sender.rotation + originalRotation
            sender.view?.transform = CGAffineTransform(rotationAngle: newRotation)
        } else if sender.state == .ended {
            print("end")
            lastRotation = sender.rotation
        }
    }
    
}

