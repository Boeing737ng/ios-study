//
//  ViewController.swift
//  SignUpForm
//
//  Created by Kihyun Choi on 2018. 6. 30..
//  Copyright © 2018년 sfo. All rights reserved.
//

import UIKit
// Text field delegate를 사용하려면 UITextFieldDelegate를 준수하겠다고 선언 해야 함
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var pwdField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var blogField: UITextField!
    @IBOutlet weak var resultTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        nameField.delegate = self //delegate에 나 자신을 넣어서 보냄 (keyboard의 return 키를 눌렀을 때의 이벤트를 감지하기 위해)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() //Keyboard goes down
        return true
    }
    
    
    @IBAction func signUpAction(_ sender: Any) {
        resultTextView.text = "\(nameField.text!)님 반갑습니다."
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

