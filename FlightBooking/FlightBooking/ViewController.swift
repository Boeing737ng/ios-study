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
    
    var buttonTag:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        datePicker.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func showDatePicker(_ sender: UIButton) {
        if datePicker.isHidden == false{
            datePicker.isHidden = true
        } else {
            datePicker.isHidden = false
        }
        buttonTag = sender.tag
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
    @IBAction func selectDate(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-dd hh:mma"
        
        let dateString = formatter.string(from: sender.date)
        if buttonTag == 1 {
            departureDateButton.setTitle(dateString, for: UIControlState.normal)
        } else {
            returnDateButton.setTitle(dateString, for: UIControlState.normal)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        datePicker.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

