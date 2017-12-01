//
//  Cities.swift
//  RegistersA
//
//  Created by cuong on 11/29/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import Foundation

class City {
    var name: String
    var code: Int
    init(name: String, code: Int) {
        self.name = name
        self.code = code
    }
    convenience init?(dict: Dictionary<String, Any>) {
        guard let name = dict["Name"] as? String,
            let code = dict["CityCode"] as? Int
            else { return nil }
        self.init(name: name, code: code)
    }
}

class District: City {
    var codeDistrict: Int
    init(name: String, code: Int,codeDistrict: Int ) {
        self.codeDistrict = codeDistrict
        super.init(name: name, code: code)
    }
    
    convenience init?(dict: Dictionary<String, Any>) {
        guard let name = dict["Name"] as? String,
            let code = dict["CityCode"] as? Int,
            let codeDistrict = dict["DistrictCode"] as? Int
            else { return nil }
        self.init(name: name, code: code, codeDistrict: codeDistrict)
    }
}
