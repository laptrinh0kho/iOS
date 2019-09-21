//
//  ViewController.swift
//  ProgressView
//
//  Created by THAI LE QUANG on 6/6/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (_) in
            self.progressView.progress += 0.1
        }
    }


}

