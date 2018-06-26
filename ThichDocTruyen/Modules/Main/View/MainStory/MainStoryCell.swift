//
//  MainStoryCell.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/21/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class MainStoryCell: UICollectionViewCell {

    @IBOutlet weak var imgStory: UIImageView!
    @IBOutlet weak var lblStory: UILabel!

    func setupView(url: String, name: String) {
        Utils.shared.setTextForView(view: lblStory, title: name, font: Fonts.FONT13_SF, color: .white)
        Utils.shared.imageViewLoadImage(imgView: imgStory, linkImage: url)
        Utils.shared.setBorderColorForView(view: imgStory, borderWidth: 1, color: .white)
        self.backgroundColor = .clear
    }
}
