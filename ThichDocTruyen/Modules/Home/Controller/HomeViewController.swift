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
        for i in 0 ... nameDemo.count - 1 {
            let story = StoryModel.init(name: nameDemo[i], author: authorDemo[i], viewCount: 2580, intro: introDemo[i], url: urlImageDemo[i], categories: categoriesDemo)
            listStories.append(story)
            listStories2.append(story)
            listStories3.append(story)
        }
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
            return listStories.count <= Config.NUMBER_STORY_PER_ROW ? listStories.count == 0 ? 0 : ((Constants.WIDTH_OF_SCREEN / 8.4) * 2) * 2 + 10 : ((Constants.WIDTH_OF_SCREEN / 4.2) * 2) * 2 + 10
        case 5:
            return listStories2.count <= Config.NUMBER_STORY_PER_ROW ? listStories2.count == 0 ? 0 : ((Constants.WIDTH_OF_SCREEN / 8.4) * 2) * 2 + 10 : ((Constants.WIDTH_OF_SCREEN / 4.2) * 2) * 2 + 10
        case 7:
            return listStories3.count <= Config.NUMBER_STORY_PER_ROW ? listStories3.count == 0 ? 0 : ((Constants.WIDTH_OF_SCREEN / 8.4) * 2) * 2 + 10 : ((Constants.WIDTH_OF_SCREEN / 4.2) * 2) * 2 + 10
        default:
            return 0
        }
    }
}
