//
//  MainViewController.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit
import SideMenu

class MainViewController: UIViewController {
    
    @IBOutlet weak var imgBg: UIImageView!
    @IBOutlet weak var tabbarView: UIView!
    var homeViewController = HomeViewController()
    var mainNavigationView: MainNavigationView!
    var mainTabbarView: MainTabbarView!
    var isSetBgImg: Bool = true
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if isSetBgImg {
            setupBackgroundImage()
            isSetBgImg = !isSetBgImg
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if DataManager.shared.isFirstTime() {
            let splashViewController = SplashViewController.init(nibName: ViewControllers.SPLASH_VIEW_CONTROLLER, bundle: nil)
            self.present(splashViewController, animated: false, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        homeViewController.view.frame = CGRect(x: 0, y: 64, width: view.frame.size.width, height: view.frame.size.height - 44 - 64)
        self.view.addSubview(homeViewController.view)
        
        switchTabbar(index: 0)
        
        addNavigationBar()
        addTabbar()
        setupSideMenu()
    }
    
    func addNavigationBar() {
        mainNavigationView = Bundle.main.loadNibNamed(Views.MAIN_NAVIGATION, owner: self, options: nil)?.first as! MainNavigationView
        mainNavigationView.frame = DataManager.shared.navigationController.navigationBar.frame
        mainNavigationView.closureSearchClick = {
            
        }
        mainNavigationView.setupView()
        DataManager.shared.navigationController.view.addSubview(mainNavigationView)
    }
    
    func addTabbar() {
        mainTabbarView = Bundle.main.loadNibNamed(Views.MAIN_TABBAR, owner: self, options: nil)?.first as! MainTabbarView
        mainTabbarView.frame = CGRect(x: 0, y: 0, width: tabbarView.frame.size.width, height: tabbarView.frame.size.height)
        mainTabbarView.closureItemClick = { index in
            self.switchTabbar(index: index)
        }
        tabbarView.addSubview(mainTabbarView)
    }
    
    func setupBackgroundImage() {
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.view.frame
        blurEffectView.alpha = 1
        imgBg.addSubview(blurEffectView)
    }
    
    func switchTabbar(index: Int) {
        switch index {
        case 0:
            self.view.bringSubview(toFront: homeViewController.view)
        case 1:
            break
        case 2:
            break
        case 3:
            break
        default:
            break
        }
    }
    
    func setupSideMenu() {
        let leftMenuVC = LeftMenuViewController.init(nibName: ViewControllers.LEFT_MENU_VIEW_CONTROLLER, bundle: nil)
        
        // Define the menus
        let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: leftMenuVC)
        // UISideMenuNavigationController is a subclass of UINavigationController, so do any additional configuration
        // of it here like setting its viewControllers.
        SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
        
        // Enable gestures. The left and/or right menus must be set up above for these to work.
        // Note that these continue to work on the Navigation Controller independent of the view controller it displays!
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        //SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
        SideMenuManager.default.menuPresentMode = .menuSlideIn
        SideMenuManager.default.menuAnimationFadeStrength = 0.4
        SideMenuManager.default.menuAnimationTransformScaleFactor = 0.8
        SideMenuManager.default.menuFadeStatusBar = false
        SideMenuManager.default.menuWidth = Constants.WIDTH_OF_SCREEN * 0.75
        SideMenuManager.default.menuAnimationPresentDuration = 0.5
        SideMenuManager.default.menuAnimationDismissDuration = 0.5
    }
}
