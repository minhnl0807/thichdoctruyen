
//
//  MainNavigationView.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit
import SideMenu

class MainNavigationView: UIView {

    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var lblSearch: UILabel!
    var closureSearchClick: (()->())!
    
    func setupView() {
        Utils.shared.setConerRadiusForView(view: searchView, num: 15)
        Utils.shared.setTextForView(view: lblSearch, title: R.string.localizable.enterKeyWord(), font: Fonts.FONT13_SF, color: Colors.GRAY_TEXT)
        self.backgroundColor = .clear
    }
    
    @IBAction func searchClick(_ sender: Any) {
        closureSearchClick()
    }
    
    @IBAction func showMenuClick(_ sender: Any) {
        DataManager.shared.navigationController.present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
    }
}
