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
        // シリアライズ処理の実行
        let archivedData = NSKeyedArchiver.archivedData(withRootObject: data)
        userDefaults.set(archivedData, forKey: "data")
        userDefaults.synchronize()
        // デシリアライズ処理の実行
        if let storedData = userDefaults.object(forKey: "data") as? Data {
            if let unarchivedData = NSKeyedUnarchiver.unarchiveObject(with: storedData) as? MyData {
                if let valueString = unarchivedData.valueString {
                    print("デシリアライズデータ：" + valueString)
                }
            }
        }
    }


}

