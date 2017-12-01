//
//  CityVC.swift
//  RegistersA
//
//  Created by cuong on 11/29/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import UIKit

class CityVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataService.share.cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = DataService.share.cities[indexPath.row].name

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DataService.share.selectCity = DataService.share.cities[indexPath.row]
    }

    
}
