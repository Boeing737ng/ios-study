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
        if returnDateButton.isHidden == false{
            returnDateLabel.isHidden = true
            returnDateButton.isHidden = true
        } else {
            returnDateLabel.isHidden = false
            returnDateButton.isHidden = false
        }
    }
    @IBAction func selectDate(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

