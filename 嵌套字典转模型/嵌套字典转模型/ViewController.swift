//
//  ViewController.swift
//  嵌套字典转模型
//
//  Created by lirenqiang on 16/10/10.
//  Copyright © 2016年 1111. All rights reserved.
//

/*
    主要是在HYBNestedModel里面进行了key的判断.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: 嵌套字典转模型
        //最外层是一个字典,其中包了一个数组,数组里面又是一个字典
        let nestedData: [String: Any] = [
            "message": "成功",
            "data" : [
                ["ID": "0", "status": "0"],
                ["ID": "1", "status": "1"]
            ]
        ]
        
        //直接
        let nestedModel = HYBNestedModel(dict: nestedData)
        
        for item in nestedModel.data! {
            print(item.ID, item.status)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

