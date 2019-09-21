//
//  ViewController.swift
//  Slider
//
//  Created by THAI LE QUANG on 6/6/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var value = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let data = try! Data(contentsOf: URL(string: "https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif")!)
        self.img.image = UIImage(data: data)
        
//        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
//            let name = "\(self.value).png"
//            self.img.image = UIImage(named:name)
//            self.value += 1
//        }
    }

    @IBOutlet weak var img: UIImageView!
    
    @IBAction func valueChanged(_ sender: UISlider) {
        print(sender.value)
    }
}

