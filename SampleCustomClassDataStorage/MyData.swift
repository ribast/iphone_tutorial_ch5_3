//
//  MyData.swift
//  SampleCustomClassDataStorage
//
//  Created by 田島諒 on 2018/12/10.
//  Copyright © 2018 Ribast. All rights reserved.
//

import Foundation

class MyData: NSObject, NSCoding {
    var valueString: String?
    
    override init() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        valueString = aDecoder.decodeObject(forKey: "valueString") as? String
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(valueString, forKey: "valueString")
    }
}
