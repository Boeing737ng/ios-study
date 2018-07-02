//
//  ViewController.swift
//  FlightBooking
//
//  Created by Kihyun Choi on 2018. 7. 2..
//  Copyright © 2018년 sfo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var departureDateButton: UIButton!
    @IBOutlet weak var returnDateButton: UIButton!
    @IBOutlet weak var returnDateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        datePicker.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func showDatePicker(_ sender: Any) {
        if datePicker.isHidden == false{
            datePicker.isHidden = true
        } else {
            datePicker.isHidden = false
        }
    }
    @IBAction func showReturnDate(_ sender: Any) {
        //print(sender.description) // change Any -> AnyObject to see
        
        // (sender as! UISwitch): sender를 UISwitch로 형 변환
//        if(sender as! UISwitch).isOn {
//            returnDateLabel.isHidden = false
//            returnDateButton.isHidden = false
//        } else {
//            returnDateLabel.isHidden = true
//            returnDateButton.isHidden = true
//        }
        
        returnDateLabel.isHidden = !(sender as! UISwitch).isOn
        returnDateButton.isHidden = !(sender as! UISwitch).isOn
    }
    @IBAction func selectDate(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

