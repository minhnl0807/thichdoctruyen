//
//  DetailStoryViewController.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/23/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class DetailStoryViewController: BaseViewController {

    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var tbStory: UITableView!
    var isFirstSetupBGImg: Bool = true
    var imageView: UIImageView!
    var headerStory: HeaderStoryView!
    var introStory: IntroStoryView!
    var window: UIWindow!
    var story: StoryModel!
    var isClickedMore: Bool = false
    
    override func navigationBarView() -> UIView? {
        return navigationView
    }
    
    override func navigationBarTitle() -> String? {
        return story.name
    }
    
    override func viewDidLayoutSubviews() {
        if isFirstSetupBGImg {
            setupBackgroundImage()
            isFirstSetupBGImg = false
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UtilAnimates.shared.animateAppearViewController(viewController: self) {
            self.imageView.removeFromSuperview()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        self.navigationController?.navigationBar.isHidden = true
        
        tbStory.delegate = self
        tbStory.dataSource = self
        tbStory.separatorColor = .clear
        tbStory.delaysContentTouches = false
        
        headerStory = Bundle.main.loadNibNamed(Views.HEADER_STORY, owner: self, options: nil)?.first as! HeaderStoryView
        headerStory.setupView(imageView: self.imageView, storyName: story.name!, author: story.author!, viewCount: story.viewCount!)
        introStory = Bundle.main.loadNibNamed(Views.INTRO_STORY, owner: self, options: nil)?.first as! IntroStoryView
        introStory.closureMoreClick = {
            self.isClickedMore = !self.isClickedMore
            self.tbStory.reloadSections(IndexSet(integersIn: 1...1), with: self.isClickedMore ? .left : .right)
        }
        introStory.setupView(intro: story.intro!)
        
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.frame.origin = CGPoint(x: 8, y: 72)
    }
    
    func setupBackgroundImage() {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.frame = self.view.frame
        imageView.image = #imageLiteral(resourceName: "bg_detail")
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

extension DetailStoryViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
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
            return headerStory
        case 1:
            return introStory
        default:
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return imageView.frame.size.height + 50
        case 1:
            // 15.25 per line
            if story.intro!.height(withConstrainedWidth: introStory.lblContent.frame.size.width, font: Fonts.FONT13_SF) > (15.25 * 5) && !isClickedMore {
                introStory.btnMore.isHidden = false
                return 15.25 * 5 + 50
            }
            introStory.btnMore.isHidden = isClickedMore ? false : true
            return story.intro!.height(withConstrainedWidth: introStory.lblContent.frame.size.width, font: Fonts.FONT13_SF) + 50
        default:
            return 0
        }
    }
}
