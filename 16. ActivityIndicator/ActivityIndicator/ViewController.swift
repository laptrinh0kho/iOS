//
//  ViewController.swift
//  ActivityIndicator
//
//  Created by THAI LE QUANG on 6/6/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var activityView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func startAction(_ sender: Any) {
        activityView.startAnimating()
    }
    
    @IBAction func stopAction(_ sender: Any) {
        activityView.stopAnimating()
    }
    
}

