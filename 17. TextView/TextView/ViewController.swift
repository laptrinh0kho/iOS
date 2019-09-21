//
//  ViewController.swift
//  TextView
//
//  Created by THAI LE QUANG on 6/17/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let myTextView = UITextView(frame: CGRect(x: 50, y: 300, width: 300, height: 200))
        myTextView.text = "Start Developing iOS Apps (Swift) is the perfect starting point for learning to create apps that run on iPhone and iPad. View this set of incremental lessons as a guided introduction to building your first app—including the tools, major concepts, and best practices that will ease your path."
        myTextView.textColor = UIColor.white
        myTextView.backgroundColor = UIColor.blue
        myTextView.font = UIFont(name: "Snell Roundhand", size: 20)
        myTextView.layer.cornerRadius = 15
        myTextView.layer.borderWidth = 3
        myTextView.layer.borderColor = UIColor.green.cgColor
        self.view.addSubview(myTextView)
    }


}

