//
//  ViewController.swift
//  DatePicker
//
//  Created by THAI LE QUANG on 6/18/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let stringDate = "20/11/2011"
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "dd/MM/yyyy"
        let date = dateFormater.date(from: stringDate)
        datePicker.setDate(date!, animated: true)
    }

   
    @IBAction func valueChanged(_ sender: UIDatePicker) {
        let selectDate = sender.date
        
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "dd MM yyyy"
        let stringDate = dateFormater.string(from: selectDate)
        
        resultLabel.text = "\(stringDate)"
        print(selectDate)
    }
    
}

