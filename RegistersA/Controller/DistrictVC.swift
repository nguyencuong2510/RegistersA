//
//  DistrictVC.swift
//  RegistersA
//
//  Created by cuong on 11/29/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import UIKit

class DistrictVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.share.district.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = DataService.share.district[indexPath.row].name
        cell.detailTextLabel?.text = "\(DataService.share.district[indexPath.row].codeDistrict)"
        
        return cell
    }
    
}
