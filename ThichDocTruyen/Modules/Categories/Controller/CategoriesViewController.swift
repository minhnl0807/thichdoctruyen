//
//  CategoriesViewController.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 7/5/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class CategoriesViewController: BaseViewController {

    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var cltCategories: UICollectionView!
    @IBOutlet weak var cltStories: UICollectionView!
    var isFirstSetupBGImg: Bool = true
    var preIndexPathSelected: IndexPath!
    var isFirstLoadCategory: Bool = false
    
    override func navigationBarView() -> UIView? {
        return navigationView
    }
    
    override func navigationBarTitle() -> String? {
        return ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UtilAnimates.shared.animateAppearViewController(viewController: self) {
            
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if isFirstSetupBGImg {
            setupBackgroundImage()
            isFirstSetupBGImg = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        cltCategories.delegate = self
        cltCategories.dataSource = self
        cltCategories.backgroundColor = .clear
        cltCategories.register(UINib(nibName: Cells.CATEGORY, bundle: nil), forCellWithReuseIdentifier: Cells.CATEGORY)
        
        cltStories.delegate = self
        cltStories.dataSource = self
        cltStories.backgroundColor = .clear
        cltStories.register(UINib(nibName: Cells.LIST_STORIES_CELL, bundle: nil), forCellWithReuseIdentifier: Cells.LIST_STORIES_CELL)
    }
    
    func setupBackgroundImage() {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.frame = self.view.frame
        imageView.image = #imageLiteral(resourceName: "splash2")
        imageView.clipsToBounds = true
        self.view.addSubview(imageView)
        
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.view.frame
        blurEffectView.alpha = 1
        imageView.addSubview(blurEffectView)
        self.view.sendSubview(toBack: imageView)
    }
}

extension CategoriesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoriesDemo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case cltCategories:
            let cell = cltCategories.dequeueReusableCell(withReuseIdentifier: Cells.CATEGORY, for: indexPath) as! CategoryCell
            cell.setupView(title: categoriesDemo[indexPath.item])
            if indexPath.item == 0 && !isFirstLoadCategory {
                cell.setupViewSelect()
                isFirstLoadCategory = true
                preIndexPathSelected = indexPath
            }
            return cell
        case cltStories:
            let cell = cltStories.dequeueReusableCell(withReuseIdentifier: Cells.LIST_STORIES_CELL, for: indexPath) as! ListStoriesCell
            cell.setupView()
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case cltCategories:
            return CGSize(width: categoriesDemo[indexPath.item].width(withConstraintedHeight: 44, font: Fonts.FONT15_SF) + 15, height: 44)
        case cltStories:
            return cltStories.frame.size
        default:
            return CGSize(width: 0, height: 0)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch collectionView {
        case cltCategories:
            if preIndexPathSelected == nil {
                preIndexPathSelected = indexPath
            } else {
                if let cell = cltCategories.cellForItem(at: preIndexPathSelected) as? CategoryCell {
                    cell.setupViewNormal()
                }
            }
            
            if let cell = cltCategories.cellForItem(at: indexPath) as? CategoryCell {
                cltStories.scrollToItem(at: indexPath, at: .left, animated: true)
                cell.setupViewSelect()
                preIndexPathSelected = indexPath
            }
        case cltStories:
            break
        default:
            break
        }
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let index = targetContentOffset.pointee.x / cltStories.frame.size.width
        let indexPath = IndexPath(item: Int(index), section: 0)
        cltCategories.selectItem(at: indexPath, animated: true, scrollPosition: .left)
        
        if preIndexPathSelected == nil {
            preIndexPathSelected = indexPath
        } else {
            if let cell = cltCategories.cellForItem(at: preIndexPathSelected) as? CategoryCell {
                cell.setupViewNormal()
            }
        }
        
        if let cell = cltCategories.cellForItem(at: indexPath) as? CategoryCell {
            cell.setupViewSelect()
            preIndexPathSelected = indexPath
        }
    }
}
