//
//  ChapterStoryView.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/28/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class ChapterStoryView: UIView {

    @IBOutlet weak var tbChapter: UITableView!
    @IBOutlet weak var lblContent: UILabel!
    @IBOutlet weak var btnSort: UIButton!
    var isClickedSort: Bool = false
    var closureClickedSort: (() -> ())!
    var closureClickedChapter: (() -> ())!
    
    func setupView() {
        tbChapter.delegate = self
        tbChapter.dataSource = self
        tbChapter.backgroundColor = .clear
        tbChapter.separatorColor = .clear
        tbChapter.register(UINib(nibName: Cells.CHAPTER_CELL, bundle: nil), forCellReuseIdentifier: Cells.CHAPTER_CELL)
        
        Utils.shared.setTextForView(view: lblContent, title: R.string.localizable.content().uppercased(), font: Fonts.FONT13_SF_BOLD, color: .white)
        Utils.shared.setTextForView(view: btnSort, title: R.string.localizable.sortNewest(), font: Fonts.FONT12_SF_ITALIC, color: .white)
    }
    
    @IBAction func sortClick(_ sender: Any) {
        isClickedSort = !isClickedSort
        Utils.shared.setTextForView(view: btnSort, title: isClickedSort ? R.string.localizable.sortOldest() : R.string.localizable.sortNewest(), font: Fonts.FONT12_SF_ITALIC, color: .white)
        closureClickedSort()
        tbChapter.reloadData()
    }
}

extension ChapterStoryView: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbChapter.dequeueReusableCell(withIdentifier: Cells.CHAPTER_CELL) as! ChapterCell
        cell.setupView(number: String(isClickedSort ? indexPath.row + 1 : 20 - indexPath.row))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tbChapter.cellForRow(at: indexPath) {
            UtilAnimates.shared.animateSelectChapter(cell: cell) {
                self.closureClickedChapter()
            }
        }
    }
}
