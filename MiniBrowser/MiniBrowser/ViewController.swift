//
//  ViewController.swift
//  MiniBrowser
//
//  Created by Kihyun Choi on 2018. 7. 2..
//  Copyright © 2018년 sfo. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var bookMarkSegmentedControl: UISegmentedControl!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var mainWebView: WKWebView!
    @IBOutlet weak var spinningActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func bookMarkAction(_ sender: Any) {
    }
    
    @IBAction func goBackAction(_ sender: Any) {
    }
    
    @IBAction func goForwardAction(_ sender: Any) {
    }
    
    @IBAction func stopLoadingAction(_ sender: Any) {
    }
    
    @IBAction func reloadAction(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
