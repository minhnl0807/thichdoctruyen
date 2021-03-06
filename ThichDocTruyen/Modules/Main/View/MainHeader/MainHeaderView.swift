//
//  MainHeaderView.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class MainHeaderView: UIView {

    @IBOutlet weak var imgHeader: UIImageView!
    @IBOutlet weak var lblTItle: UILabel!
    @IBOutlet weak var btnMore: UIButton!
    @IBOutlet weak var widthOfBtnMore: NSLayoutConstraint!
    var closureMoreClick: (() -> ())!
    
    func setupView() {
        Utils.shared.setTextForView(view: lblTItle, title: R.string.localizable.newestUpdate(), font: Fonts.FONT16_SF, color: Colors.GREEN_TEXT)
        Utils.shared.setTextForView(view: btnMore, title: R.string.localizable.watchMore(), font: Fonts.FONT13_SF, color: Colors.BLUE_BTN)
        Utils.shared.setConerRadiusForView(view: btnMore, num: 10)
        Utils.shared.setBorderColorForView(view: btnMore, borderWidth: 1, color: Colors.BLUE_BTN)
        
        //UtilAnimates.shared.animateHigtlightImage(image: imgHeader)
        
        let widthOfBtn = R.string.localizable.watchMore().width(withConstraintedHeight: btnMore.frame.size.height, font: Fonts.FONT13_SF) + 20
        widthOfBtnMore.constant = widthOfBtn
        
        self.backgroundColor = .clear
    }
    
    @IBAction func moreClick(_ sender: Any) {
        closureMoreClick()
    }
}
