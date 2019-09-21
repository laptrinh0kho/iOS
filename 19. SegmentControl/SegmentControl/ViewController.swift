//
//  ViewController.swift
//  SegmentControl
//
//  Created by THAI LE QUANG on 6/17/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let mySegment = UISegmentedControl(frame: CGRect(x: 50, y: 300, width: 320, height: 30))
        mySegment.insertSegment(withTitle: "First", at: 0, animated: true)
        mySegment.insertSegment(withTitle: "Second", at: 1, animated: true)
        mySegment.insertSegment(withTitle: "Third", at: 2, animated: true)
        mySegment.insertSegment(with: UIImage(named: "calendar.png"), at: 3, animated: true)
        mySegment.selectedSegmentIndex = 1
        mySegment.tintColor = UIColor.red
        mySegment.backgroundColor = UIColor.yellow
        mySegment.addTarget(self, action: #selector(valueChanged2(_:)), for: .valueChanged)
        self.view.addSubview(mySegment)
    }
    
    @objc func valueChanged2(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        
        switch index {
        case 0:
            print("segment 0 is seleted")
        case 1:
            print("segment 1 is seleted")
        case 2:
            print("segment 2 is seleted")
        case 3:
            print("segment 3 is seleted")
        default:
            break
        }
    }

    @IBAction func valueChanged(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        
        switch index {
        case 0:
            print("segment 0 is seleted")
        case 1:
            print("segment 1 is seleted")
        case 2:
            print("segment 2 is seleted")
        case 3:
            print("segment 3 is seleted")
        default:
            break
        }
    }
    
}

