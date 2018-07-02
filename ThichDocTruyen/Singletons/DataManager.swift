//
//  DataManager.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class DataManager: NSObject {
    static let shared = DataManager()
    var navigationController: UINavigationController!
    var mainViewController: MainViewController!
    
    func isFirstTime() -> Bool {
        if let isFirst = UserDefaults.standard.object(forKey: KEY_USER_DEFAULT.FIRST_TIME) {
            return isFirst as! Bool
        } else {
            UserDefaultApp.shared.setValue(value: true, key: KEY_USER_DEFAULT.FIRST_TIME)
            return UserDefaultApp.shared.getValue(key: KEY_USER_DEFAULT.FIRST_TIME)
        }
    }
}
