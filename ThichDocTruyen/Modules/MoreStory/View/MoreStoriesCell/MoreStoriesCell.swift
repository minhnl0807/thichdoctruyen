//
//  MoreStoriesCell.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 7/5/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class MoreStoriesCell: UITableViewCell {

    @IBOutlet weak var imgStory: UIImageView!
    @IBOutlet weak var lblStoryName: UILabel!
    @IBOutlet weak var heightOfLblStrName: NSLayoutConstraint!
    @IBOutlet weak var lblCategory: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    
    func setupView(story: StoryModel) {
        self.selectionStyle = .none
        self.backgroundColor = .clear
        
        Utils.shared.imageViewLoadImage(imgView: imgStory, linkImage: story.url!)
        Utils.shared.setBorderColorForView(view: imgStory, borderWidth: 1, color: .white)
        
        Utils.shared.setTextForView(view: lblStoryName, title: story.name, font: Fonts.FONT15_SF_BOLD, color: .white)
        heightOfLblStrName.constant = (lblStoryName.text?.height(withConstrainedWidth: lblStoryName.frame.size.width, font: Fonts.FONT14_SF_BOLD))!
        
        Utils.shared.setTextForView(view: lblCategory, title: R.string.localizable.kindOf() + ": ", font: Fonts.FONT12_SF, color: .white)
        for i in 0 ... (story.categories?.count)! - 1 {
            lblCategory.text?.append(story.categories![i])
            if i != (story.categories?.count)! - 1 {
                lblCategory.text?.append(", ")
            }
        }
        
        Utils.shared.setTextForView(view: lblAuthor, title: R.string.localizable.author() + ": " + story.author!, font: Fonts.FONT12_SF_ITALIC, color: .white)
    }
    
}
