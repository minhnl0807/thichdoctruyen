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
    var window: UIWindow!
    
    override func navigationBarView() -> UIView? {
        return navigationView
    }
    
    override func navigationBarTitle() -> String? {
        return "Tên chuyện"
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
            self.imageView = nil
            //self.window.removeFromSuperview()
        }
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
        
        headerStory = Bundle.main.loadNibNamed(Views.HEADER_STORY, owner: self, options: nil)?.first as! HeaderStoryView
        headerStory.setupView(imageView: self.imageView, storyName: "Đừng như thói quen", author: "Jaykii", viewCount: 1000)
        
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.frame.origin = CGPoint(x: 8, y: 72)
        
        //window = UIApplication.shared.keyWindow != nil ? UIApplication.shared.keyWindow! : UIWindow.init(frame: UIScreen.main.bounds)
        //window.addSubview(imageView)
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
        return 1
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
        default:
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return imageView.frame.size.height + 48
        default:
            return 0
        }
    }
}
