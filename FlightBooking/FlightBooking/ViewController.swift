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
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func showDatePicker(_ sender: Any) {
        
    }
    @IBAction func showReturnDate(_ sender: Any) {
    }
    @IBAction func selectDate(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

