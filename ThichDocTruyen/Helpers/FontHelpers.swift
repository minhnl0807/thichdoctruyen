//
//  FontHelpers.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

struct FontSizes {
    static let size10 = 10
    static let size11 = 11
    static let size12 = 12
    static let size13 = 13
    static let size14 = 14
    static let size15 = 15
    static let size16 = 16
    static let size17 = 17
    static let size18 = 18
    static let size19 = 19
    static let size20 = 20
    static let size28 = 28
}

struct FontNames {
    static let HelveticaNeueRegular = "HelveticaNeue"
    static let HelveticaNeueLight = "HelveticaNeue-Light"
    static let SFUIDisplayLight = "SanFranciscoDisplay-Light"
    static let HelveticaNeueItalic = "HelveticaNeue-Italic"
    static let HelveticaNeueMedium = "HelveticaNeue-Medium"
    static let HelveticaNeueBold = "HelveticaNeue-Bold"
    static let SFUIDisplayBold = "SanFranciscoDisplay-Bold"
}

func fontApp(size: Int, name: String) -> UIFont {
    return UIFont.init(name: name, size: CGFloat(size))!
}
