//
//  HYBDataModel.swift
//  Alamofire+SwiftyJSON
//
//  Created by lirenqiang on 16/10/10.
//  Copyright © 2016年 1111. All rights reserved.
//

import UIKit

class HYBDataModel: NSObject {
    
    var ID: String?
    var status: String?
    
    init(dict: [String: Any]) {
        super.init()
        setValuesForKeys(dict)
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
    
}
