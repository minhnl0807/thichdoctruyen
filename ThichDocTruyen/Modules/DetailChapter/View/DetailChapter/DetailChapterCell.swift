//
//  DetailChapterCell.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/29/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class DetailChapterCell: UITableViewCell {

    @IBOutlet weak var imgDetail: UIImageView!
    @IBOutlet weak var lblNumberPage: UILabel!
    var height: CGFloat = 0
    var width: CGFloat = 0
    
    func setupView(image: UIImage, numberPage: String) {
        self.selectionStyle = .none
        self.backgroundColor = .clear
        imgDetail.image = image
        
        Utils.shared.setTextForView(view: lblNumberPage, title: numberPage, font: Fonts.FONT12_SF, color: .red)
    }
    
    
}
