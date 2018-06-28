//
//  BaseViewController.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var baseNavigation: BaseNavigationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        addViewForStatusBar()
    }
    
    func navigationBarEnabled() -> Bool {
        return true
    }
    
    func navigationBarTitle() -> String? {
        return nil
    }
    
    func navigationBarView() -> UIView? {
        return nil
    }
    
    func addViewForStatusBar() {
        let view = UIView()
        view.backgroundColor = .white
        view.frame = CGRect(x: 0, y: 0, width: Constants.WIDTH_OF_SCREEN, height: 20)
        self.view.addSubview(view)
    }

    /* setup navigation bar for view */
    func setupNavigationBar() {
        if navigationBarEnabled() {
            baseNavigation = (Bundle.main.loadNibNamed(Views.BASE_NAVIGATION, owner: self, options: nil)?.first as? BaseNavigationView)!
            baseNavigation.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 44)
            baseNavigation.closureBackClick = {
                UtilAnimates.shared.animateDisappearViewController(viewController: self)
            }
            Utils.shared.setTextForView(view: baseNavigation.lblTitle, title: navigationBarTitle(), font: Fonts.FONT16_SF, color: .black)
            baseNavigation.lblTitle.sizeToFit()
            self.navigationBarView()?.addSubview(self.baseNavigation)
        }
    }
}
