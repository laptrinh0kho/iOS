//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by THAI LE QUANG on 7/10/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

struct MenuItem {
    var name: String
    var country: String
    var image: String
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    let array = [ MenuItem(name: "Cà ri massaman (Thái Lan)", country: "Thái Lan", image: "1.jpg"),
                  MenuItem(name: "Pizza ở Napoli (Italia)", country: "Italia", image: "2.jpg"),
                  MenuItem(name: "Socola (Mexico)", country: "Mexico", image: "3.jpg"),
                  MenuItem(name: "Sushi (Nhật Bản)", country: "Nhật Bản", image: "4.jpg"),
                  MenuItem(name: "Vịt quay (Trung Quốc)", country: "Trung Quốc", image: "5.jpg"),
                  MenuItem(name: "Hamburger (Đức)", country: "Đức", image: "6.jpg"),
                  MenuItem(name: "Penang assam laksa (Malaysia)", country: "Malaysia", image: "7.jpg"),
                  MenuItem(name: "Tom yum goong (Thái Lan)", country: "Thái Lan", image: "8.jpg"),
                  MenuItem(name: "Kem (Mỹ)", country: "Mỹ", image: "9.jpg"),
                  MenuItem(name: "Gà Muamba (Gabon Châu Phi)", country: "Gabon Châu Phi", image: "10.jpg"),
    ]
    
    var selectedItem: MenuItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? DetailViewController {
            controller.item = selectedItem
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! MyTableViewCell
        
        let item = array[indexPath.item]
        
        cell.visulizeCell(with: item)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        selectedItem = array[indexPath.item]
        self.performSegue(withIdentifier: "showDetailFlow", sender: nil)
    }

}

