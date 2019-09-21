//
//  ViewController.swift
//  MayTinhBoTui
//
//  Created by THAI LE QUANG on 5/24/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var so1: Int!
    var so2: Int!
    var dau: String!
    
    @IBOutlet weak var ketquaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nut0_clicked(_ sender: Any) {
        //lay gia tri
        var kq = ketquaTextField.text ?? ""
        kq += "0"
        
        //gan nguoc lai
        ketquaTextField.text = kq
    }
    
    @IBAction func nut1_clicked(_ sender: Any) {
        //lay gia tri
        var kq = ketquaTextField.text ?? ""
        kq += "1"
        
        //gan nguoc lai
        ketquaTextField.text = kq
    }
    
    @IBAction func nut2_clicked(_ sender: Any) {
        //lay gia tri
        var kq = ketquaTextField.text ?? ""
        kq += "2"
        
        //gan nguoc lai
        ketquaTextField.text = kq
    }
    
    @IBAction func nut3_clicked(_ sender: Any) {
        //lay gia tri
        var kq = ketquaTextField.text ?? ""
        kq += "3"
        
        //gan nguoc lai
        ketquaTextField.text = kq
    }
    
    @IBAction func nut4_clicked(_ sender: Any) {
        //lay gia tri
        var kq = ketquaTextField.text ?? ""
        kq += "4"
        
        //gan nguoc lai
        ketquaTextField.text = kq
    }
    
    @IBAction func nut5_clicked(_ sender: Any) {
        //lay gia tri
        var kq = ketquaTextField.text ?? ""
        kq += "5"
        
        //gan nguoc lai
        ketquaTextField.text = kq
    }
    
    
    @IBAction func nut6_clicked(_ sender: Any) {
        //lay gia tri
        var kq = ketquaTextField.text ?? ""
        kq += "6"
        
        //gan nguoc lai
        ketquaTextField.text = kq
    }
    
    @IBAction func nut7_clicked(_ sender: Any) {
        //lay gia tri
        var kq = ketquaTextField.text ?? ""
        kq += "7"
        
        //gan nguoc lai
        ketquaTextField.text = kq
    }
    
    @IBAction func nut8_clicked(_ sender: Any) {
        //lay gia tri
        var kq = ketquaTextField.text ?? ""
        kq += "8"
        
        //gan nguoc lai
        ketquaTextField.text = kq
    }
    
    @IBAction func nut9_clicked(_ sender: Any) {
        //lay gia tri
        var kq = ketquaTextField.text ?? ""
        kq += "9"
        
        //gan nguoc lai
        ketquaTextField.text = kq
    }
    
    
    @IBAction func cong_clicked(_ sender: Any) {
        let so1String = ketquaTextField.text ?? "0"
        so1 = Int(so1String)
        
        ketquaTextField.text = ""
        dau = "+"
        
    }
    
    @IBAction func tru_clicked(_ sender: Any) {
        let so1String = ketquaTextField.text ?? "0"
        so1 = Int(so1String)
        
        ketquaTextField.text = ""
        dau = "-"
    }
    
    @IBAction func nhan_clicked(_ sender: Any) {
        let so1String = ketquaTextField.text ?? "0"
        so1 = Int(so1String)
        
        ketquaTextField.text = ""
        dau = "x"
    }
    
    @IBAction func chia_clicked(_ sender: Any) {
        let so1String = ketquaTextField.text ?? "0"
        so1 = Int(so1String)
        
        ketquaTextField.text = ""
        dau = "/"
    }
    
    @IBAction func bang_clicked(_ sender: Any) {
        
        let so2String = ketquaTextField.text ?? "0"
        so2 = Int(so2String)
        
        var result = 0
        
        if dau == "+" {
            result = so1 + so2
        }
        
        if dau == "-" {
            result = so1 - so2
        }
        
        if dau == "x" {
            result = so1 * so2
        }
        
        if dau == "/" {
            result = so1 / so2
        }
        
        ketquaTextField.text = "\(result)"
    }
    
    
    @IBAction func xoa_clicked(_ sender: Any) {
        ketquaTextField.text = ""
    }
    
}

