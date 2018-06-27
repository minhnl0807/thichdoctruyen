//
//  HomeViewController.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/26/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tbHome: UITableView!
    var mainBannerView: MainBannerView!
    var functionView: MainFunctionView!
    var headerView: MainHeaderView!
    var headerView2: MainHeaderView!
    var headerView3: MainHeaderView!
    var mainStory: MainStoryView!
    var mainStory2: MainStoryView!
    var mainStory3: MainStoryView!
    var listStories: [StoryModel] = []
    var listStories2: [StoryModel] = []
    var listStories3: [StoryModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
    }
    
    func setupView() {
        mainBannerView = Bundle.main.loadNibNamed(Views.MAIN_BANNER, owner: self, options: nil)?.first as! MainBannerView
        mainBannerView.setupView()
        functionView = Bundle.main.loadNibNamed(Views.MAIN_FUNCTION, owner: self, options: nil)?.first as! MainFunctionView
        functionView.setupView()
        headerView = Bundle.main.loadNibNamed(Views.MAIN_HEADER, owner: self, options: nil)?.first as! MainHeaderView
        headerView.setupView()
        mainStory = Bundle.main.loadNibNamed(Views.MAIN_STORY, owner: self, options: nil)?.first as! MainStoryView
        headerView2 = Bundle.main.loadNibNamed(Views.MAIN_HEADER, owner: self, options: nil)?.first as! MainHeaderView
        headerView2.setupView()
        mainStory2 = Bundle.main.loadNibNamed(Views.MAIN_STORY, owner: self, options: nil)?.first as! MainStoryView
        headerView3 = Bundle.main.loadNibNamed(Views.MAIN_HEADER, owner: self, options: nil)?.first as! MainHeaderView
        headerView3.setupView()
        mainStory3 = Bundle.main.loadNibNamed(Views.MAIN_STORY, owner: self, options: nil)?.first as! MainStoryView
        
        tbHome.delegate = self
        tbHome.dataSource = self
        tbHome.separatorColor = .clear
        tbHome.delaysContentTouches = false
        tbHome.backgroundColor = .clear
    }
    
    func setupData() {
        if isHashCode {
            self.hashcode()
        }
        
        mainStory.setupView(listStories: self.listStories)
        mainStory2.setupView(listStories: self.listStories2)
        mainStory3.setupView(listStories: self.listStories3)
    }
    
    // hashcode list story
    func hashcode() {
        let story1 = StoryModel.init(name: nameDemo[0], author: "Cristiano Ronaldo", viewCount: 258, intro: "", url: urlImageDemo[0], categories: categoryDemo)
        let story2 = StoryModel.init(name: nameDemo[1], author: "Leonel Messi", viewCount: 194, intro: "", url: urlImageDemo[1], categories: categoryDemo)
        let story3 = StoryModel.init(name: nameDemo[2], author: "Neymar", viewCount: 9472, intro: "", url: urlImageDemo[2], categories: categoryDemo)
        let story4 = StoryModel.init(name: nameDemo[3], author: "Eden Hazard", viewCount: 3124, intro: "", url: urlImageDemo[3], categories: categoryDemo)
        let story5 = StoryModel.init(name: nameDemo[4], author: "Toni Kroos", viewCount: 318, intro: "", url: urlImageDemo[4], categories: categoryDemo)
        let story6 = StoryModel.init(name: nameDemo[5], author: "Hary Kane", viewCount: 2848, intro: "", url: urlImageDemo[5], categories: categoryDemo)
        let story7 = StoryModel.init(name: nameDemo[6], author: "Gareth Bale", viewCount: 5938, intro: "", url: urlImageDemo[6], categories: categoryDemo)
        let story8 = StoryModel.init(name: nameDemo[7], author: "Manuel Neuer", viewCount: 1282, intro: "", url: urlImageDemo[7], categories: categoryDemo)
        
        listStories.append(story1)
        listStories.append(story2)
        listStories.append(story3)
        listStories.append(story4)
        listStories.append(story5)
        listStories.append(story6)
        listStories.append(story7)
        listStories.append(story8)
        
        listStories2.append(story8)
        listStories2.append(story3)
        listStories2.append(story1)
        listStories2.append(story5)
        listStories2.append(story7)
        listStories2.append(story4)
        listStories2.append(story6)
        listStories2.append(story2)
        
        listStories3.append(story3)
        listStories3.append(story1)
        listStories3.append(story6)
        listStories3.append(story5)
        listStories3.append(story7)
        listStories3.append(story8)
        listStories3.append(story2)
        listStories3.append(story4)
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
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
            return mainBannerView
        case 1:
            return functionView
        case 2:
            return headerView
        case 3:
            return mainStory
        case 4:
            return headerView2
        case 5:
            return mainStory2
        case 6:
            return headerView3
        case 7:
            return mainStory3
        default:
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return Constants.WIDTH_OF_SCREEN / 5.4
        case 1:
            return Constants.HEIGHT_OF_SCREEN * 0.12
        case 2:
            return listStories.count == 0 ? 0 : 44
        case 4:
            return listStories2.count == 0 ? 0 : 44
        case 6:
            return listStories3.count == 0 ? 0 : 44
        case 3:
            return listStories.count <= 8 ? listStories.count == 0 ? 0 : ((Constants.WIDTH_OF_SCREEN / 8.4) * 2) * 2 + 10 : ((Constants.WIDTH_OF_SCREEN / 4.2) * 2) * 2 + 10
        case 5:
            return listStories2.count <= 8 ? listStories2.count == 0 ? 0 : ((Constants.WIDTH_OF_SCREEN / 8.4) * 2) * 2 + 10 : ((Constants.WIDTH_OF_SCREEN / 4.2) * 2) * 2 + 10
        case 7:
            return listStories3.count <= 8 ? listStories3.count == 0 ? 0 : ((Constants.WIDTH_OF_SCREEN / 8.4) * 2) * 2 + 10 : ((Constants.WIDTH_OF_SCREEN / 4.2) * 2) * 2 + 10
        default:
            return 0
        }
    }
}
