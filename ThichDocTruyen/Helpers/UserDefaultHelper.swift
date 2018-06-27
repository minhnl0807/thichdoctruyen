//
//  UserDefaultHelper.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/26/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import Foundation

struct KEY_USER_DEFAULT {
    static let FIRST_TIME = "FirstTime"
}

class UserDefaultApp : NSObject {
    static let shared = UserDefaultApp()
    
    /* Set Value for Key */
    func setValue(value: Any, key: String) {
        UserDefaults.standard.set(value, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    /* Get value for Key */
    func getValue(key: String, defaultValue: String) -> String {
        return (UserDefaults.standard.value(forKey: key) ?? defaultValue ) as! String
    }
    
    /* Get value for Key Bool Type */
    func getValue(key: String) -> Bool {
        return UserDefaults.standard.bool(forKey: key)
    }
    
    /* Remove value for Key */
    func removeValue(key: String, defaultValue: String){
        UserDefaults.standard.removeObject(forKey: key)
    }
}
