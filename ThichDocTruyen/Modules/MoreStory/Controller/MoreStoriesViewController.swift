//
//  MoreStoryViewController.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 7/5/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class MoreStoriesViewController: BaseViewController {

    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var tbListStories: UITableView!
    var isFirstSetupBGImg: Bool = true
    var listStories: [StoryModel] = []
    
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
        hashcode()
        
        tbListStories.delegate = self
        tbListStories.dataSource = self
        tbListStories.separatorColor = .clear
        tbListStories.backgroundColor = .clear
        tbListStories.register(UINib(nibName: Cells.MORE_STORIES_CELL, bundle: nil), forCellReuseIdentifier: Cells.MORE_STORIES_CELL)
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
    
    // hashcode list stories
    func hashcode() {
        for i in 0 ... nameDemo.count - 1 {
            let story = StoryModel.init(name: nameDemo[i], author: authorDemo[i], viewCount: 2580, intro: introDemo[i], url: urlImageDemo[i], categories: categoriesDemo)
            listStories.append(story)
        }
    }
}

extension MoreStoriesViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listStories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbListStories.dequeueReusableCell(withIdentifier: Cells.MORE_STORIES_CELL) as! MoreStoriesCell
        cell.setupView(story: listStories[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.HEIGHT_OF_SCREEN / 7
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 8
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tbListStories.cellForRow(at: indexPath) as? MoreStoriesCell {
            UtilAnimates.shared.animateSelectChapter(cell: cell) {
                let detailStoryVC = DetailStoryViewController.init(nibName: ViewControllers.DETAIL_STORY_VIEW_CONTROLLER, bundle: nil)
                detailStoryVC.story = self.listStories[indexPath.row]
                self.present(detailStoryVC, animated: false, completion: nil)
            }
        }
    }
}
