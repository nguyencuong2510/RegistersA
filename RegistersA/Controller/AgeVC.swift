//
//  AgeVC.swift
//  RegistersA
//
//  Created by cuong on 11/30/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import UIKit

class AgeVC: UIViewController{
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.selectRow(3, inComponent: 0, animated: true)
    }
    
}

extension AgeVC: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return DataService.share.ageArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(DataService.share.ageArray[row])"
    }
}

