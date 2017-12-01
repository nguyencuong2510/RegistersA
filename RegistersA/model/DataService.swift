//
//  DataService.swift
//  RegistersA
//
//  Created by cuong on 11/29/17.
//  Copyright © 2017 nguyencuong. All rights reserved.
//

import Foundation

class DataService {
    static let share = DataService()
    
    private var _cities: [City]!
    private var _district: [District]!
    var district: [District]!
    
    var ketQua: Dictionary<String, Any> = ["City": "a","District": "a","Gender": "a" ,"Age": 18]
    
    //MARK: ------ Select City -------
    var selectCity: City?{
        set{
            if _district == nil {
                readDistrict()
            }
            district = _district.filter({ $0.code == newValue?.code })
        }
        get{
            return nil
        }
    }
    
    //MARK ------ District -----------
    var cities: [City]{
        if _cities == nil {
            readCity()
        }
        return _cities
    }
    
    func readCity() {
        
        _cities = []
        guard var city = readService(plist: "Cities.plist"),
            let datas = city["Cities"] as? [[String: Any]] else {return }
        for data in datas {
            guard let city = City(dict: data) else {return }
            _cities.append(city)
        }
        
    }
    
    //MARK: ----- District ----------
    func readDistrict() {
        
        _district = []
        guard var value = readService(plist: "Districts.plist"),
            let datas = value["Districts"] as? [[String: Any]] else {return }
        for data in datas {
            guard let district = District(dict: data) else {return }
            _district.append(district)
        }
    }
    
    //MARK: ------ AGE --------
    var ageArray = Array(15...90)
    
    
}

extension DataService {
    
    //MARK: ------ Func read file Service -----
    func readService(plist: String) -> Dictionary<String, Any>? {
        
        let nameFile = plist.components(separatedBy: ".")
        guard let paths = Bundle.main.path(forResource: nameFile.first , ofType: nameFile.last),
            let root = NSDictionary(contentsOfFile: paths) as? Dictionary<String, Any>
            else { return nil }
        return root
    }
}
