//
//  MainBannerView.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/26/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class MainBannerView: UIView {

    @IBOutlet weak var cltBanner: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    var timer: AppTimer!
    
    func setupView() {
        cltBanner.delegate = self
        cltBanner.dataSource = self
        cltBanner.register(UINib(nibName: Cells.SPLASH, bundle: nil), forCellWithReuseIdentifier: Cells.SPLASH)
        
        pageControl.numberOfPages = bannerImages.count
        
        // init timer to auto slide
        self.timer = AppTimer(interval: 3, repeats: true, afterDelay: 0, action: {
            self.autoScrollView()
        })
        self.timer.run()
    }
    
    /* set scroll to next page */
    func autoScrollView() {
        // scroll page control
        let indexNextPage = (self.pageControl.currentPage == bannerImages.count - 1) ? 0 :  self.pageControl.currentPage + 1
        self.pageControl.currentPage = indexNextPage
        
        // scroll collection view
        let indexPath = IndexPath(item: indexNextPage, section: 0)
        self.cltBanner.scrollToItem(at: indexPath, at: UICollectionViewScrollPosition.right, animated: true)
    }

}

extension MainBannerView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bannerImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cltBanner.dequeueReusableCell(withReuseIdentifier: Cells.SPLASH, for: indexPath) as! SplashCell
        cell.imgSplash.image = bannerImages[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cltBanner.frame.size.width, height: cltBanner.frame.size.height)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let index = targetContentOffset.pointee.x / cltBanner.frame.width
        let indexPath = NSIndexPath(item: Int(index), section: 0)
        pageControl.currentPage = indexPath.item
    }
}
