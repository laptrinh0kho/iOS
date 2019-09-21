//
//  ViewController.swift
//  BaiCao
//
//  Created by THAI LE QUANG on 6/2/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageHinh1: UIImageView!
    @IBOutlet weak var imageHinh2: UIImageView!
    @IBOutlet weak var imageHinh3: UIImageView!
    
    
    @IBOutlet weak var imageHinh4: UIImageView!
    @IBOutlet weak var imageHinh5: UIImageView!
    @IBOutlet weak var imageHinh6: UIImageView!
    
    
    @IBAction func rutbai_click(_ sender: Any) {
        
        var labai = bobai.count
        var rd = Int.random(in: 0...labai)
        var nameCard = bobai[rd]
        imageHinh1.image = UIImage(named: nameCard)
        bobai.remove(at: rd)
        
        labai = bobai.count
        rd = Int.random(in: 0...labai)
        nameCard = bobai[rd]
        imageHinh4.image = UIImage(named: nameCard)
        bobai.remove(at: rd)
        
        labai = bobai.count
        rd = Int.random(in: 0...labai)
        nameCard = bobai[rd]
        imageHinh2.image = UIImage(named: nameCard)
        bobai.remove(at: rd)
        
        labai = bobai.count
        rd = Int.random(in: 0...labai)
        nameCard = bobai[rd]
        imageHinh5.image = UIImage(named: nameCard)
        bobai.remove(at: rd)
        
        labai = bobai.count
        rd = Int.random(in: 0...labai)
        nameCard = bobai[rd]
        imageHinh3.image = UIImage(named: nameCard)
        bobai.remove(at: rd)
        
        labai = bobai.count
        rd = Int.random(in: 0...labai)
        nameCard = bobai[rd]
        imageHinh6.image = UIImage(named: nameCard)
        bobai.remove(at: rd)
        
        
    }
    
    @IBAction func choilai_clicked(_ sender: Any) {
        bobai = bocaiConst
        imageHinh1.image = UIImage(named: "up.png")
        imageHinh2.image = UIImage(named: "up.png")
        imageHinh3.image = UIImage(named: "up.png")
        imageHinh4.image = UIImage(named: "up.png")
        imageHinh5.image = UIImage(named: "up.png")
        imageHinh6.image = UIImage(named: "up.png")
    }
    
    var bobai = ["1_c.png", "1_r.png", "1_ch.png", "1_b.png",
                "2_c.png", "2_r.png", "2_ch.png", "2_b.png",
                "3_c.png", "3_r.png", "3_ch.png", "3_b.png",
                "4_c.png", "4_r.png", "4_ch.png", "4_b.png",
                "5_c.png", "5_r.png", "5_ch.png", "5_b.png",
                "6_c.png", "6_r.png", "6_ch.png", "6_b.png",
                "7_c.png", "7_r.png", "7_ch.png", "7_b.png",
                "8_c.png", "8_r.png", "8_ch.png", "8_b.png",
                "9_c.png", "9_r.png", "9_ch.png", "9_b.png",
                "10_c.png", "10_r.png", "10_ch.png", "10_b.png",
                "11_c.png", "11_r.png", "11_ch.png", "11_b.png",
                "12_c.png", "12_r.png", "12_ch.png", "12_b.png",
                "13_c.png", "13_r.png", "13_ch.png", "13_b.png"]
    
    let bocaiConst = ["1_c.png", "1_r.png", "1_ch.png", "1_b.png",
                      "2_c.png", "2_r.png", "2_ch.png", "2_b.png",
                      "3_c.png", "3_r.png", "3_ch.png", "3_b.png",
                      "4_c.png", "4_r.png", "4_ch.png", "4_b.png",
                      "5_c.png", "5_r.png", "5_ch.png", "5_b.png",
                      "6_c.png", "6_r.png", "6_ch.png", "6_b.png",
                      "7_c.png", "7_r.png", "7_ch.png", "7_b.png",
                      "8_c.png", "8_r.png", "8_ch.png", "8_b.png",
                      "9_c.png", "9_r.png", "9_ch.png", "9_b.png",
                      "10_c.png", "10_r.png", "10_ch.png", "10_b.png",
                      "11_c.png", "11_r.png", "11_ch.png", "11_b.png",
                      "12_c.png", "12_r.png", "12_ch.png", "12_b.png",
                      "13_c.png", "13_r.png", "13_ch.png", "13_b.png"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

