//
//  ViewController.swift
//  MyWebView
//
//  Created by THAI LE QUANG on 7/9/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var myWebView: WKWebView!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myWebView.navigationDelegate = self
        let url = URL(string: "https://www.google.com/")
        let request = URLRequest(url: url!)
        myWebView.load(request)
        
        checkButton()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        checkButton()
    }

    @IBAction func backButton_clicked(_ sender: Any) {
        myWebView.goBack()
        checkButton()
    }
    
    @IBAction func nextButton_clicked(_ sender: Any) {
        myWebView.goForward()
        checkButton()
    }
    
    func checkButton() {
        if myWebView.canGoBack {
            backButton.isEnabled = true
        } else {
            backButton.isEnabled = false
        }
        
        if myWebView.canGoForward {
            nextButton.isEnabled = true
        } else {
            nextButton.isEnabled = false
        }
    }
}

