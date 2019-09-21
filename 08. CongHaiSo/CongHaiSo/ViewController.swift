//
//  ViewController.swift
//  CongHaiSo
//
//  Created by THAI LE QUANG on 5/24/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Oulet
    
    @IBOutlet weak var inputTextField1: UITextField!
    @IBOutlet weak var inputTextField2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let label1 = UILabel(frame: CGRect(x: 10, y: 0, width: 110, height: inputTextField1.frame.size.height))
        label1.text = "   Số thứ nhất: "
        inputTextField1.leftView = label1
        inputTextField1.leftViewMode = .always
        
        let label2 = UILabel(frame: CGRect(x: 10, y: 0, width: 110, height: inputTextField2.frame.size.height))
        label2.text = "   Số thứ hai: "
        inputTextField2.leftView = label2
        inputTextField2.leftViewMode = .always
    }
    
    //MARK: - Action

    @IBAction func handleButton_clicked(_ sender: UIButton) {
        let number1 = inputTextField1.text ?? ""
        let number2 = inputTextField2.text ?? ""
        
        if number1 == "" || number2 == "" {
            let alertController = UIAlertController(title: "Thông báo", message: "Vui lòng nhập đầy đủ giá trị!", preferredStyle: .alert)
            let actionOk = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(actionOk)
            self.present(alertController, animated: true, completion: nil)
            
            return
        }
        
        let result = Int(number1)! + Int(number2)!
        let stringResult = "Kết quả: \(result)"
        let attString = NSMutableAttributedString(string: stringResult)
        
        let myRange = NSRange(location: 9, length: stringResult.count - 9)
        
        attString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: myRange)
        
        resultLabel.attributedText = attString
    }
    
}

