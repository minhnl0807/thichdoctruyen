//
//  MainFunctionView.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class MainFunctionView: UIView {

    var closureCategoriesClick: (() -> ())!
    var closureRankingClick: (() -> ())!
    
    func setupView() {
        self.backgroundColor = .clear
    }

    @IBAction func categoriesClick(_ sender: Any) {
        closureCategoriesClick()
    }
    
    @IBAction func rankingClick(_ sender: Any) {
        closureRankingClick()
    }
}
