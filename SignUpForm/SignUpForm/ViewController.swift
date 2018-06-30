//
//  ViewController.swift
//  SignUpForm
//
//  Created by Kihyun Choi on 2018. 6. 30..
//  Copyright © 2018년 sfo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var pwdField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var blogField: UITextField!
    @IBOutlet weak var resultTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func signUpAction(_ sender: Any) {
        resultTextView.text = "\(nameField.text!)님 반갑습니다."
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

