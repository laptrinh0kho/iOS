//
//  ViewController.swift
//  Storyboard
//
//  Created by THAI LE QUANG on 6/19/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveToSceen2(_ sender: Any) {
        self.performSegue(withIdentifier: "showSecondView", sender: nil)
    }
 
    @IBAction func backToSceen1(_ sender: UIStoryboardSegue) {
        
    }
}

