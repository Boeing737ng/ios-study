//
//  ViewController.swift
//  DigitalFrame
//
//  Created by Kihyun Choi on 2018. 6. 14..
//  Copyright © 2018년 sfo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton! // Required to change attribute of button
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initialize images object array with optional value (!)
        let images = [UIImage(named: "1.jpg")!,
                      UIImage(named: "2.jpg")!,
                      UIImage(named: "3.jpg")!,
                      UIImage(named: "4.jpg")!,
                      UIImage(named: "5.jpg")!,
                      UIImage(named: "6.jpg")!,
                      UIImage(named: "7.jpg")!,
                      UIImage(named: "8.jpg")!,
                      UIImage(named: "9.jpg")!,
                      UIImage(named: "10.jpg")!,
                      UIImage(named: "11.jpg")!,
                      UIImage(named: "12.jpg")!]
        
        imgView.animationImages = images
        imgView.animationDuration = 5
        speedLabel.text = String(format: "%.2f", speedSlider.value) // to format of 0.00
    }
    
    @IBAction func toggleButton(_ sender: Any) {
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControlState.normal)
        }
        else {
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControlState.normal)
        }
    }
    
    @IBAction func speedSliderAction(_ sender: Any) {
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControlState.normal)
        speedLabel.text = String(format: "%.2f", speedSlider.value) // to format of 0.00
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

