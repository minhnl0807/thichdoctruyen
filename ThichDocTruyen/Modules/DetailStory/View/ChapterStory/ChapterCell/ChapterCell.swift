//
//  ChapterCell.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/28/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class ChapterCell: UITableViewCell {

    @IBOutlet weak var lblChapter: UILabel!
    
    func setupView(number: String) {
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        Utils.shared.setTextForView(view: lblChapter, title: R.string.localizable.chapter() + " " + number, font: Fonts.FONT14_SF_ITALIC, color: .white)
    }
}
