//
//  SplashViewController.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/26/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var cltSplash: UICollectionView!
    @IBOutlet weak var btnCancel: UIButton!
    var timer: AppTimer!
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // update userdefault First_Time to false
        UserDefaultApp.shared.setValue(value: false, key: KEY_USER_DEFAULT.FIRST_TIME)
        // stop auto scroll slide
        self.timer.stop()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        cltSplash.delegate = self
        cltSplash.dataSource = self
        cltSplash.register(UINib(nibName: Cells.SPLASH, bundle: nil), forCellWithReuseIdentifier: Cells.SPLASH)
        
        pageControl.numberOfPages = splashImages.count
        
        // init timer to auto slide
        self.timer = AppTimer(interval: 3, repeats: true, afterDelay: 0, action: {
            self.autoScrollView()
        })
        self.timer.run()
        
        Utils.shared.setConerRadiusForView(view: btnCancel, num: 15)
        Utils.shared.setTextForView(view: btnCancel, title: R.string.localizable.cancel(), font: Fonts.FONT14_SF, color: .white)
    }
    
    /* set scroll to next page */
    func autoScrollView() {
        // scroll page control
        let indexNextPage = (self.pageControl.currentPage == splashImages.count - 1) ? 0 :  self.pageControl.currentPage + 1
        self.pageControl.currentPage = indexNextPage
        
        // scroll collection view
        let indexPath = IndexPath(item: indexNextPage, section: 0)
        self.cltSplash.scrollToItem(at: indexPath, at: UICollectionViewScrollPosition.right, animated: true)
    }
    
    @IBAction func cancelClick(_ sender: Any) {
        UtilAnimates.shared.animateDisappearViewController(viewController: self)
    }
}

extension SplashViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return splashImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cltSplash.dequeueReusableCell(withReuseIdentifier: Cells.SPLASH, for: indexPath) as! SplashCell
        cell.imgSplash.image = splashImages[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cltSplash.frame.size.width, height: cltSplash.frame.size.height)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let index = targetContentOffset.pointee.x / cltSplash.frame.width
        let indexPath = NSIndexPath(item: Int(index), section: 0)
        pageControl.currentPage = indexPath.item
    }
}
