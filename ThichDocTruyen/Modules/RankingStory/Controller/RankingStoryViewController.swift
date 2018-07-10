//
//  RankingStoryViewController.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 7/6/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class RankingStoryViewController: BaseViewController {

    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var tbRanking: UITableView!
    var topRanking: TopRankingView!
    var isFirstSetupBGImg: Bool = true
    var listRanking: [StoryModel] = []
    
    override func navigationBarView() -> UIView? {
        return navigationView
    }
    
    override func navigationBarTitle() -> String? {
        return R.string.localizable.ranking()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UtilAnimates.shared.animateAppearViewController(viewController: self) {}
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
        tbRanking.delegate = self
        tbRanking.dataSource = self
        tbRanking.separatorColor = .clear
        tbRanking.backgroundColor = .clear
        tbRanking.register(UINib(nibName: Cells.RANKING_CELL, bundle: nil), forCellReuseIdentifier: Cells.RANKING_CELL)
        
        topRanking = Bundle.main.loadNibNamed(Views.TOP_RANKING, owner: self, options: nil)?.first as! TopRankingView
        topRanking.setupView()
        
        hashcode()
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
    
    func hashcode() {
        for i in 0 ... nameDemo.count - 1 {
            let story = StoryModel.init(name: nameDemo[i], author: authorDemo[i], viewCount: 2580, intro: introDemo[i], url: urlImageDemo[i], categories: categoriesDemo)
            listRanking.append(story)
        }
        tbRanking.reloadData()
    }
}

extension RankingStoryViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 0
        case 1:
            return listRanking.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            return UITableViewCell()
        case 1:
            let cell = tbRanking.dequeueReusableCell(withIdentifier: Cells.RANKING_CELL) as! RankingCell
            cell.setupView(story: listRanking[indexPath.row])
            
            switch indexPath.row {
            case 0:
                Utils.shared.setTextForView(view: cell.lblRankNo, title: "01", font: Fonts.FONT14_SF_BOLD, color: Colors.RANK_1ST)
                cell.imgRibbon.isHidden = false
            case 1:
                Utils.shared.setTextForView(view: cell.lblRankNo, title: "02", font: Fonts.FONT14_SF_BOLD, color: Colors.RANK_2ND)
                cell.imgRibbon.isHidden = false
            case 2:
                Utils.shared.setTextForView(view: cell.lblRankNo, title: "03", font: Fonts.FONT14_SF_BOLD, color: Colors.RANK_3RD)
                cell.imgRibbon.isHidden = false
            default:
                Utils.shared.setTextForView(view: cell.lblRankNo, title: (indexPath.row + 1) >= 10 ? String(indexPath.row + 1) : "0" + String(indexPath.row + 1), font: Fonts.FONT14_SF_BOLD, color: .white)
                cell.imgRibbon.isHidden = true
            }
            
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 0
        case 1:
            return Constants.HEIGHT_OF_SCREEN / 7.5
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 0:
            return topRanking
        default:
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return Constants.HEIGHT_OF_SCREEN / 3.5
        default:
            return 0
        }
    }
}
