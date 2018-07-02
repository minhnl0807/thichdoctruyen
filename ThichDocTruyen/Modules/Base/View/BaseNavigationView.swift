//
//  BaseNavigation.swift
//  NVPay
//
//  Created by MinhNL on 12/5/17.
//  Copyright © 2017 NamViet. All rights reserved.
//

import UIKit

class BaseNavigationView: UIView {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var lblTitle: UILabel!
    var closureBackClick: (()->Void)!
    
    /* setup views */
    func setupView() {
        
    }
    
    @IBAction func backClick(_ sender: Any) {
        closureBackClick()
    }
}
