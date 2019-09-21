//
//  DetailViewController.swift
//  CustomTableViewCell
//
//  Created by THAI LE QUANG on 7/10/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var contenImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    var item: MenuItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        contenImageView.image = UIImage(named: item!.image)
        nameLabel.text = item!.name
        countryLabel.text = item!.country
    }
    
    @IBAction func backButton_clicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
