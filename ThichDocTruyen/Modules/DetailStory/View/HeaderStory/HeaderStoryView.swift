//
//  HeaderStoryView.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/26/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class HeaderStoryView: UIView {

    @IBOutlet weak var imgStory: UIImageView!
    @IBOutlet weak var widthOfImgStory: NSLayoutConstraint!
    @IBOutlet weak var heightOfImgStory: NSLayoutConstraint!
    @IBOutlet weak var lblStoryName: UILabel!
    @IBOutlet weak var heightOfLblStrName: NSLayoutConstraint!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var categoryView: UIView!
    @IBOutlet weak var cltCategory: UICollectionView!
    @IBOutlet weak var lblViewCount: UILabel!
    @IBOutlet weak var lblKindOf: UILabel!
    var story: StoryModel!
    
    func setupView(imageView: UIImageView?, story: StoryModel, urlImage: String) {
        self.story = story
        
        if imageView != nil {
            imgStory.image = imageView?.image
            widthOfImgStory.constant = (imageView?.frame.size.width)!
            heightOfImgStory.constant = (imageView?.frame.size.height)!
        } else {
            Utils.shared.imageViewLoadImage(imgView: imgStory, linkImage: urlImage)
            widthOfImgStory.constant = DataManager.shared.baseSizeStoryImage.width
            heightOfImgStory.constant = DataManager.shared.baseSizeStoryImage.height
        }
        
        Utils.shared.setBorderColorForView(view: imgStory, borderWidth: 1, color: .white)
        
        Utils.shared.setTextForView(view: lblStoryName, title: story.name, font: Fonts.FONT16_SF_BOLD, color: .white)
        heightOfLblStrName.constant = (lblStoryName.text?.height(withConstrainedWidth: lblStoryName.frame.size.width, font: Fonts.FONT16_SF_BOLD))!
        
        Utils.shared.setTextForView(view: lblAuthor, title: R.string.localizable.author() + story.author!, font: Fonts.FONT14_SF_ITALIC, color: .white)
        
        Utils.shared.setTextForView(view: lblViewCount, title: R.string.localizable.views() + String(story.viewCount!), font: Fonts.FONT13_SF, color: .white)
        
        Utils.shared.setTextForView(view: lblKindOf, title: R.string.localizable.kindOf(), font: Fonts.FONT12_SF_ITALIC, color: .white)
        
        cltCategory.delegate = self
        cltCategory.dataSource = self
        cltCategory.register(UINib(nibName: Cells.CATEGORY_STORY, bundle: nil), forCellWithReuseIdentifier: Cells.CATEGORY_STORY)
        cltCategory.backgroundColor = .clear
    }
}

extension HeaderStoryView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (story.categories?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cltCategory.dequeueReusableCell(withReuseIdentifier: Cells.CATEGORY_STORY, for: indexPath) as! CategoryStoryCell
        cell.setupView(text: story.categories![indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: story.categories![indexPath.item].width(withConstraintedHeight: 24, font: Fonts.FONT12_SF) + 10, height: 24)
    }
}
