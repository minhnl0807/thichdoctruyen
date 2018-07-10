//
//  RankingCell.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 7/9/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class RankingCell: UITableViewCell {

    @IBOutlet weak var lblRankNo: UILabel!
    @IBOutlet weak var imgStory: UIImageView!
    @IBOutlet weak var lblStoryName: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblViewCount: UILabel!
    @IBOutlet weak var imgRibbon: UIImageView!
    
    func setupView(story: StoryModel) {
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        Utils.shared.setTextForView(view: lblStoryName, title: story.name, font: Fonts.FONT12_SF_BOLD, color: .white)
        Utils.shared.setTextForView(view: lblAuthor, title: R.string.localizable.author() + ": " + story.author!, font: Fonts.FONT12_SF_ITALIC, color: .white)
        Utils.shared.setTextForView(view: lblViewCount, title: R.string.localizable.views() + String(story.viewCount!), font: Fonts.FONT12_SF, color: .white)
        
        Utils.shared.imageViewLoadImage(imgView: imgStory, linkImage: story.url!)
        Utils.shared.setBorderColorForView(view: imgStory, borderWidth: 1, color: .white)
    }
}
