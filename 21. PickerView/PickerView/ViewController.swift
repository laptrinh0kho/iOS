//
//  ViewController.swift
//  PickerView
//
//  Created by THAI LE QUANG on 6/18/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    
    let arrayImage = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg"]
    let arrayName = ["Cà ri massaman (Thái Lan)", "Pizza ở Napoli (Italia)", "Socola (Mexico)", "Sushi (Nhật Bản)", "Vịt quay (Trung Quốc)", "Hamburger (Đức)", "Penang assam laksa (Malaysia)", "Tom yum goong (Thái Lan)", "Kem (Mỹ)", "Gà Muamba (Gabon Châu Phi)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = arrayName[0]
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayImage.count
    }
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        <#code#>
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 70))
        imageView.image = UIImage(named: arrayImage[row])
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 70
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let name = arrayName[row]
        resultLabel.text = name
    }
}

