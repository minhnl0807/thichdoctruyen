//
//  MainViewController.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {
    
    @IBOutlet weak var tbMain: UITableView!
    @IBOutlet weak var imgBg: UIImageView!
    var navigationView: MainNavigationView!
    var functionView: MainFunctionView!
    var headerView: MainHeaderView!
    var headerView2: MainHeaderView!
    var mainStory: MainStoryView!
    var mainStory2: MainStoryView!
    var isSetBgImg: Bool = true
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if isSetBgImg {
            setupBackgroundImage()
            isSetBgImg = !isSetBgImg
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        tbMain.delegate = self
        tbMain.dataSource = self
        tbMain.separatorColor = .clear
        tbMain.delaysContentTouches = false
        tbMain.backgroundColor = .clear
        
        functionView = Bundle.main.loadNibNamed(Views.MAIN_FUNCTION, owner: self, options: nil)?.first as! MainFunctionView
        functionView.setupView()
        headerView = Bundle.main.loadNibNamed(Views.MAIN_HEADER, owner: self, options: nil)?.first as! MainHeaderView
        headerView.setupView()
        mainStory = Bundle.main.loadNibNamed(Views.MAIN_STORY, owner: self, options: nil)?.first as! MainStoryView
        mainStory.setupView()
        headerView2 = Bundle.main.loadNibNamed(Views.MAIN_HEADER, owner: self, options: nil)?.first as! MainHeaderView
        headerView2.setupView()
        mainStory2 = Bundle.main.loadNibNamed(Views.MAIN_STORY, owner: self, options: nil)?.first as! MainStoryView
        mainStory2.setupView()
        
        addNavigationBar()
    }
    
    func addNavigationBar() {
        navigationView = Bundle.main.loadNibNamed(Views.MAIN_NAVIGATION, owner: self, options: nil)?.first as! MainNavigationView
        navigationView.frame = DataManager.shared.navigationController.navigationBar.frame
        navigationView.closureSearchClick = {
            
        }
        navigationView.setupView()
        DataManager.shared.navigationController.view.addSubview(navigationView)
    }
    
    func setupBackgroundImage() {
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.view.frame
        blurEffectView.alpha = 1
        imgBg.addSubview(blurEffectView)
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 0:
            return functionView
        case 1:
            return headerView
        case 2:
            return mainStory
        case 3:
            return headerView2
        case 4:
            return mainStory2
        default:
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return Constants.HEIGHT_OF_SCREEN * 0.12
        case 1, 3:
            return 44
        case 2, 4:
            return ((Constants.WIDTH_OF_SCREEN / 4.2) * 2) * 2
        default:
            return 0
        }
    }
}

