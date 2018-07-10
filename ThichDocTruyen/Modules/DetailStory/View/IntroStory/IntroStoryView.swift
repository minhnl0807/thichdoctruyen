//
//  IntroStoryView.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/27/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class IntroStoryView: UIView {

    @IBOutlet weak var lblContent: UILabel!
    @IBOutlet weak var lblIntro: UILabel!
    @IBOutlet weak var btnMore: UIButton!
    var closureMoreClick: (() -> ())!
    var isSelected: Bool = false
    
    func setupView(intro: String) {
        Utils.shared.setTextForView(view: lblContent, title: intro, font: Fonts.FONT13_SF, color: .white)
        Utils.shared.setTextForView(view: lblIntro, title: R.string.localizable.intro().uppercased(), font: Fonts.FONT13_SF_BOLD, color: .white)
        Utils.shared.setTextForView(view: btnMore, title: R.string.localizable.watchMore(), font: Fonts.FONT12_SF_ITALIC, color: Colors.BLUE_BTN)
    }
    
    @IBAction func moreClick(_ sender: Any) {
        isSelected = !isSelected
        Utils.shared.setTextForView(view: btnMore, title: isSelected ? R.string.localizable.hide() : R.string.localizable.watchMore(), font: Fonts.FONT12_SF_ITALIC, color: Colors.BLUE_BTN)
        closureMoreClick()
    }
}
