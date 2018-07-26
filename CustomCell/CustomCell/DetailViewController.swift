//
//  DetailViewController.swift
//  CustomCell
//
//  Created by Kihyun Choi on 2018. 7. 26..
//  Copyright © 2018년 sfo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailData = [String:String]()

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = UIImage(named: detailData["image"]!)
        nameLabel.text = detailData["name"]
        amountLabel.text = detailData["amount"]
        valueLabel.text = detailData["value"]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
