//
//  StoryModel.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/27/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import Foundation
import SwiftyJSON

class StoryModel: NSObject {
    var name:       String?
    var author:     String?
    var viewCount:  Int?
    var intro:      String?
    var url:        String?
    var categories: [String]?
    
    public init(name: String, author: String, viewCount: Int, intro: String, url: String, categories: [String]) {
        self.name       = name
        self.author     = author
        self.viewCount  = viewCount
        self.intro      = intro
        self.url        = url
        self.categories = categories
    }
}
