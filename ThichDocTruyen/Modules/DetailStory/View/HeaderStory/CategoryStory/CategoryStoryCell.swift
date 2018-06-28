//
//  CategoryStoryCell.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/26/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class CategoryStoryCell: UICollectionViewCell {

    @IBOutlet weak var lblCategory: UILabel!
    
    func setupView(text: String) {
        Utils.shared.setTextForView(view: lblCategory, title: "#" + text, font: Fonts.FONT12_SF, color: .white)
        Utils.shared.setConerRadiusForView(view: self, num: 10)
    }
}
