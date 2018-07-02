//
//  MainStoryView.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class MainStoryView: UIView {

    @IBOutlet weak var cltStory: UICollectionView!
    var listStories: [StoryModel] = []
    
    func setupView(listStories: [StoryModel]) {
        self.backgroundColor = .clear
        
        self.listStories = listStories
        
        cltStory.delegate = self
        cltStory.dataSource = self
        cltStory.register(UINib(nibName: Cells.MAIN_STORY, bundle: nil), forCellWithReuseIdentifier: Cells.MAIN_STORY)
        cltStory.backgroundColor = .clear
    }
}

extension MainStoryView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return listStories.count <= Config.NUMBER_STORY_PER_ROW ? 1 : 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if listStories.count <= Config.NUMBER_STORY_PER_ROW {
            return listStories.count
        } else {
            switch section {
            case 0:
                return Config.NUMBER_STORY_PER_ROW
            default:
                return listStories.count - Config.NUMBER_STORY_PER_ROW
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cltStory.dequeueReusableCell(withReuseIdentifier: Cells.MAIN_STORY, for: indexPath) as! MainStoryCell
        let indexStory = indexPath.row + (Config.NUMBER_STORY_PER_ROW * indexPath.section)
        let story = listStories[indexStory]
        cell.setupView(story: story)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.WIDTH_OF_SCREEN / 4.2, height: (Constants.WIDTH_OF_SCREEN / 4.2) * 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = cltStory.cellForItem(at: indexPath) as? MainStoryCell {
            UtilAnimates.shared.animateSelectStory(cell: cell) {
                UtilAnimates.shared.animatePresent(view: cell, completion: { view in
                    let detailStoryVC = DetailStoryViewController.init(nibName: ViewControllers.DETAIL_STORY_VIEW_CONTROLLER, bundle: nil)
                    detailStoryVC.imageView = view.imgStory
                    let indexStory = indexPath.row + (Config.NUMBER_STORY_PER_ROW * indexPath.section)
                    detailStoryVC.story = self.listStories[indexStory]
                    view.removeFromSuperview()
                    DataManager.shared.navigationController.present(detailStoryVC, animated: false, completion: nil)
                })
            }
        }
    }
}
