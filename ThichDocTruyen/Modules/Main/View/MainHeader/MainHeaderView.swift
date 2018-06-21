//
//  MainHeaderView.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class MainHeaderView: UIView {

    @IBOutlet weak var lblTItle: UILabel!
    @IBOutlet weak var btnMore: UIButton!
    @IBOutlet weak var widthOfBtnMore: NSLayoutConstraint!
    
    func setupView() {
        Utils.shared.setTextForView(view: lblTItle, title: R.string.localizable.newestUpdate(), font: Fonts.FONT16_SF, color: Color.GREEN_TEXT)
        Utils.shared.setTextForView(view: btnMore, title: R.string.localizable.watchMore(), font: Fonts.FONT13_SF, color: Color.BLUE_BTN)
        Utils.shared.setConerRadiusForView(view: btnMore, num: 10)
        Utils.shared.setBorderColorForView(view: btnMore, borderWidth: 1, color: Color.BLUE_BTN)
        
        let widthOfBtn = R.string.localizable.watchMore().width(withConstraintedHeight: btnMore.frame.size.height, font: Fonts.FONT13_SF) + 20
        widthOfBtnMore.constant = widthOfBtn
        
        self.backgroundColor = .clear
    }
}
