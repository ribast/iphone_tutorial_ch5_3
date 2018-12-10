//
//  ViewController.swift
//  SampleCustomClassDataStorage
//
//  Created by 田島諒 on 2018/12/10.
//  Copyright © 2018 Ribast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 画面表示時にデータを格納
        let userDefaults = UserDefaults.standard
        let data = MyData()
        data.valueString = "text"
        userDefaults.set(data, forKey: "data")
        userDefaults.synchronize()
    }


}

