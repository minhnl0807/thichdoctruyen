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
    var chapterStory: ChapterStoryView!
    var window: UIWindow!
    var story: StoryModel!
    var isClickedMore: Bool = false
    var isClickedSort: Bool = false
    var lastContentOffset: CGFloat = 0
    var isload: Bool = false
    
    override func navigationBarView() -> UIView? {
        return navigationView
    }
    
    override func navigationBarTitle() -> String? {
        return story.name
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
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
        headerStory.setupView(imageView: self.imageView, story: self.story)
        
        introStory = Bundle.main.loadNibNamed(Views.INTRO_STORY, owner: self, options: nil)?.first as! IntroStoryView
        introStory.closureMoreClick = {
            self.isClickedMore = !self.isClickedMore
            self.tbStory.reloadSections(IndexSet(integersIn: 1...1), with: .automatic)
        }
        introStory.setupView(intro: story.intro!)
        
        chapterStory = Bundle.main.loadNibNamed(Views.CHAPTER_STORY, owner: self, options: nil)?.first as! ChapterStoryView
        chapterStory.closureClickedSort = {
            self.isClickedSort = !self.isClickedSort
        }
        chapterStory.closureClickedChapter = {
            let detailChapterVC = DetailChapterViewController.init(nibName: ViewControllers.DETAIL_CHAPTER_VIEW_CONTROLLER, bundle: nil)
            detailChapterVC.story = self.story
            //DataManager.shared.navigationController.present(detailChapterVC, animated: false, completion: nil)
            self.present(detailChapterVC, animated: false, completion: nil)
        }
        chapterStory.setupView()
        
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
        return 3
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
        case 2:
            return chapterStory
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
        case 2:
            return 20 * 44 + 20 * 2 + 32
        default:
            return 0
        }
    }
}

extension DetailStoryViewController: UIScrollViewDelegate {
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        let currentOffset = scrollView.contentOffset.y
//        let maximumOffset = scrollView.contentSize.height - scrollView.frame.size.height
//        // Change 10.0 to adjust the distance from bottom
//        if maximumOffset - currentOffset <= 50.0 {
//            print("load more")
//        }
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        self.lastContentOffset = scrollView.contentOffset.y
    }

    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let currentOffset = scrollView.contentOffset.y
        let maximumOffset = scrollView.contentSize.height - scrollView.frame.size.height
        // Change 10.0 to adjust the distance from bottom
        if maximumOffset - currentOffset <= 50.0 {
            if !isload {
                isload = true
                print("load more")
            }
        }
//        if (self.lastContentOffset < scrollView.contentOffset.y) {
//            print("Up")
//        } else if (self.lastContentOffset > scrollView.contentOffset.y) {
//            print("Down")
//        } else {
//            // didn't move
//        }
    }
}
