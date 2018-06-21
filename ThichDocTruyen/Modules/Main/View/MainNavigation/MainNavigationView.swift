//
//  MainNavigationView.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class MainNavigationView: UIView {

    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var lblSearch: UILabel!
    var closureSearchClick: (()->())!
    
    func setupView() {
        Utils.shared.setConerRadiusForView(view: searchView, num: 15)
        Utils.shared.setTextForView(view: lblSearch, title: R.string.localizable.enterKeyWord(), font: Fonts.FONT13_SF, color: Color.GRAY_TEXT)
        self.backgroundColor = .clear
    }
    
    @IBAction func searchClick(_ sender: Any) {
        closureSearchClick()
    }
    
}
