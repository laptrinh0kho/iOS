//
//  ViewController.swift
//  ImageExample
//
//  Created by THAI LE QUANG on 6/2/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func loadImageLocal_clicked(_ sender: Any) {
        imageView.image = UIImage(named: "swift.png")
    }
    
    @IBAction func loadImageRemote_clicked(_ sender: Any) {
        
        //1 get url String
        let urlString = "https://www.freelancinggig.com/blog/wp-content/uploads/2017/02/swift-for-ios-development.png"
        
        //2 URL
        let url = URL(string: urlString)
    
        //3 get data from url
        let data = try! Data(contentsOf: url!)
        
        //4 gan data vao trong image view
        imageView.image = UIImage(data: data)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

