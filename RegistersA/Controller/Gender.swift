//
//  ViewController.swift
//  RegistersA
//
//  Created by cuong on 11/29/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import UIKit
class Gender: UIViewController {
    
    @IBOutlet var arrayButton: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectButton(sender: UIButton){
        arrayButton.forEach { $0.isSelected = false }
        sender.isSelected = true
        guard var select = sender.currentTitle else { return }
        select.remove(at: select.startIndex)
        
        performSegue(withIdentifier: "showAge", sender: nil)
    }


}

