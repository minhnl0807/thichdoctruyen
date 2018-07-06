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
    var isFirstSetupBGImg: Bool = true
    var preIndexPathSelected: IndexPath!
    
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
        cltCategories.register(UINib(nibName: Cells.CATEGORY_STORY, bundle: nil), forCellWithReuseIdentifier: Cells.CATEGORY_STORY)
    }
    
    func setupBackgroundImage() {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.frame = self.view.frame
        imageView.image = #imageLiteral(resourceName: "splash")
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
        let cell = cltCategories.dequeueReusableCell(withReuseIdentifier: Cells.CATEGORY_STORY, for: indexPath) as! CategoryStoryCell
        Utils.shared.setTextForView(view: cell.lblCategory, title: categoriesDemo[indexPath.item], font: Fonts.FONT15_SF_BOLD, color: .white)
        cell.backgroundColor = .clear
        cell.alpha = 1
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: categoriesDemo[indexPath.item].width(withConstraintedHeight: 44, font: Fonts.FONT15_SF_BOLD) + 15, height: 44)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if preIndexPathSelected == nil {
            preIndexPathSelected = indexPath
        } else {
            if let cell = cltCategories.cellForItem(at: preIndexPathSelected) as? CategoryStoryCell {
                cell.backgroundColor = .clear
                cell.alpha = 1
            }
        }
        
        if let cell = cltCategories.cellForItem(at: indexPath) as? CategoryStoryCell {
            cell.backgroundColor = .lightGray
            cell.alpha = 0.5
            preIndexPathSelected = indexPath
        }
    }
}
