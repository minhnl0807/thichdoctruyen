//
//  ListStoriesCell.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 7/6/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class ListStoriesCell: UICollectionViewCell {

    @IBOutlet weak var tbListStories: UITableView!
    var listStories: [StoryModel] = []
    
    func setupView() {
        hashcode()
        
        tbListStories.delegate = self
        tbListStories.dataSource = self
        tbListStories.separatorColor = .clear
        tbListStories.backgroundColor = .clear
        tbListStories.register(UINib(nibName: Cells.MORE_STORIES_CELL, bundle: nil), forCellReuseIdentifier: Cells.MORE_STORIES_CELL)
    }
    
    // hashcode list stories
    func hashcode() {
        for i in 0 ... nameDemo.count - 1 {
            let story = StoryModel.init(name: nameDemo[i], author: authorDemo[i], viewCount: 2580, intro: introDemo[i], url: urlImageDemo[i], categories: categoriesDemo)
            listStories.append(story)
        }
    }
}

extension ListStoriesCell: UITableViewDelegate, UITableViewDataSource {
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
                Utils.shared.topViewController()?.present(detailStoryVC, animated: false, completion: nil)
            }
        }
    }
}
