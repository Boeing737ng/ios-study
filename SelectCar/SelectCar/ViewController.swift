//
//  ViewController.swift
//  SelectCar
//
//  Created by Kihyun Choi on 2018. 7. 2..
//  Copyright © 2018년 sfo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var imgView: UIImageView!
    
    let carCompanyName = ["Tesla", "Lamborghini", "Porsche"]
    var carModel = [String]()
    var carModelImage = [String]()
    
    let tesla = ["Model S", "Model X"]
    let lamborghini = ["aventador","veneno","huracan"]
    let porsche = ["911","boxter"]
    
    let teslaImageNames = ["tesla-model-s.jpg","tesla-model-x.jpg"]
    let lamborghiniImageNames = ["lamborghini-aventador.jpg", "lamborghini-veneno.jpg", "lamborghini-huracan.jpg"]
    let porscheImageNames = ["porsche-911.jpg", "porsche-boxter.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carModel = tesla
        carModelImage = teslaImageNames
        imgView.layer.cornerRadius = 50
        imgView.layer.masksToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // PickerView의 text를 흰색으로 표시 (필요 없다면 그냥 titleForRow 사용)
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        if component == 0 {
            return NSAttributedString(string: carCompanyName[row], attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        } else {
            return NSAttributedString(string: carModel[row], attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return carCompanyName.count
        } else {
            return carModel.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 && row == 0 {
            carModel = tesla
            carModelImage = teslaImageNames
        } else if component == 0 && row == 1 {
            carModel = lamborghini
            carModelImage = lamborghiniImageNames
        } else if component == 0 && row == 2 {
            carModel = porsche
            carModelImage = porscheImageNames
        }
        pickerView.reloadAllComponents()
        imgView.image = UIImage(named: carModelImage[pickerView.selectedRow(inComponent: 1)])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

