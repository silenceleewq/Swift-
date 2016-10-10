//
//  HYBNestedModel.swift
//  Alamofire+SwiftyJSON
//
//  Created by lirenqiang on 16/10/10.
//  Copyright © 2016年 1111. All rights reserved.
//

import UIKit

class HYBNestedModel: NSObject {
    var message: String?
    var data: [HYBDataModel]?
    
    init(dict: [String: Any]) {
        super.init()
        //字典转模型
        setValuesForKeys(dict)
    }
    
    //setValuesForKeys这个方法会调用下面这个方法
    //所以在下面这个方法里面,根据key值来做响应的处理
    override func setValue(_ value: Any?, forKey key: String) {
        if key == "data" {
            //如果是data的话,那么先将键为data的value值转成一个包含字典的数组
            if let array = value as? [[String: Any]] {
                var tempArr = [HYBDataModel]()
                //遍历数组中的每一个字典,对data模型进行赋值.
                for dict in array {
                    let dataModel = HYBDataModel(dict: dict)
                    tempArr.append(dataModel)
                }
                data = tempArr
            }
            return
        }
        super.setValue(value, forKey: key)
    }
    //防止字典里面有用不着的转模型的key值,导致程序crash.
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}
