//
//  CategoryCell.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 7/6/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {

    @IBOutlet weak var lblCategory: UILabel!
    @IBOutlet weak var underLineView: UIView!
    
    func setupView(title: String) {
        Utils.shared.setTextForView(view: lblCategory, title: title, font: Fonts.FONT15_SF, color: .white)
        self.backgroundColor = .clear
        self.alpha = 1
        underLineView.alpha = 0
    }

    func setupViewNormal() {
        UIView.animate(withDuration: 0.1) {
            self.lblCategory.textColor = .white
            self.underLineView.alpha = 0
        }
    }
    
    func setupViewSelect() {
        UIView.animate(withDuration: 0.1) {
            self.lblCategory.textColor = .lightGray
            self.underLineView.alpha = 1
        }
    }
}
