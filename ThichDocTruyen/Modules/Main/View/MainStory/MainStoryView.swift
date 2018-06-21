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
    
    func setupView() {
        self.backgroundColor = .clear
        
        cltStory.delegate = self
        cltStory.dataSource = self
        cltStory.register(UINib(nibName: Cells.MAIN_STORY, bundle: nil), forCellWithReuseIdentifier: Cells.MAIN_STORY)
        cltStory.backgroundColor = .clear
    }

}

extension MainStoryView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return urlDemoImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cltStory.dequeueReusableCell(withReuseIdentifier: Cells.MAIN_STORY, for: indexPath) as! MainStoryCell
        cell.setupView(url: urlDemoImage[indexPath.item], name: nameDemo[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.WIDTH_OF_SCREEN / 4.2, height: (Constants.WIDTH_OF_SCREEN / 4.2) * 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = cltStory.cellForItem(at: indexPath)
        UtilAnimates.shared.animateSelectStory(cell: cell!) {
            
        }
    }
}
