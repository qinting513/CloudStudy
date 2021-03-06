//
//  UserInfo.swift
//  CloudStudy
//
//  Created by pro on 2016/10/20.
//  Copyright © 2016年 daisy. All rights reserved.
//

import UIKit
import SwiftyJSON

class UserInfo: NSObject {

    static let shared = UserInfo()
    
    var id           : String!
    var name         : String!
    var head_photo   : String!
    var sid          : String!
    var org_name     : String!
    var company_name : String!
    var job_name     : String!
    var unread_count : String!
    var email        : String!
    var home_tel     : String!
    var office_tel   : String!
    var msn          : String!
    var qq           : String!
    var mobile       : String!
    var kdescription : String!
    var referer      : String!
    var integral     : String!
    var rule_id      : String!
    var doc_rule_id  : String!
    
    func parseUserInfoFromHistoryData() {
        let data = UserDefaults.standard.object(forKey: kUSER_UserInfoData)
        let json = JSON(data: data as! Data)
        parseData(json:json["data"])
    }
}
