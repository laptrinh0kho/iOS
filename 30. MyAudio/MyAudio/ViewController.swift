//
//  ViewController.swift
//  MyAudio
//
//  Created by THAI LE QUANG on 7/10/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        guard let path = Bundle.main.path(forResource: "If_I_Had_a_Chicken.mp3", ofType: nil) else {
            return
        }
        
        guard let url = URL(string: path) else {
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
        } catch {
            //Error
        }
        
    }

    @IBAction func playButton_clicked(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pauseButton_clicked(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func stopButton_clicked(_ sender: Any) {
        player.stop()
    }
}

