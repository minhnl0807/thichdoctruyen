//
//  MainTabbarView.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/26/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class MainTabbarView: UIView {

    var closureItemClick: ((Int)->())!
    
    @IBAction func itemClick(_ sender: Any) {
        if let btn = sender as? UIButton {
            closureItemClick(btn.tag)
        }
    }

}
