//
//  ViewController.swift
//  Frame
//
//  Created by THAI LE QUANG on 6/19/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentImageView: UIImageView!
    
    @IBAction func up(_ sender: Any) {
        contentImageView.frame.origin.y = contentImageView.frame.origin.y - 1
        contentImageView.frame.size.width = contentImageView.frame.size.width - 1
    }
    
    @IBAction func down(_ sender: Any) {
        contentImageView.frame.origin.y = contentImageView.frame.origin.y + 1
        contentImageView.frame.size.width = contentImageView.frame.size.width + 1
    }
    
    @IBAction func left(_ sender: Any) {
        contentImageView.frame.origin.x = contentImageView.frame.origin.x - 1
    }
    
    @IBAction func right(_ sender: Any) {
        contentImageView.frame.origin.x = contentImageView.frame.origin.x + 1
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

