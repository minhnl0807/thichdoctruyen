//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 colors.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 0 files.
  struct file {
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 8 images.
  struct image {
    /// Image `bg_left`.
    static let bg_left = Rswift.ImageResource(bundle: R.hostingBundle, name: "bg_left")
    /// Image `bg_main`.
    static let bg_main = Rswift.ImageResource(bundle: R.hostingBundle, name: "bg_main")
    /// Image `icon_classify`.
    static let icon_classify = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_classify")
    /// Image `icon_full_story`.
    static let icon_full_story = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_full_story")
    /// Image `icon_menu`.
    static let icon_menu = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_menu")
    /// Image `icon_newest`.
    static let icon_newest = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_newest")
    /// Image `icon_rank`.
    static let icon_rank = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_rank")
    /// Image `icon_search`.
    static let icon_search = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_search")
    
    /// `UIImage(named: "bg_left", bundle: ..., traitCollection: ...)`
    static func bg_left(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.bg_left, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "bg_main", bundle: ..., traitCollection: ...)`
    static func bg_main(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.bg_main, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_classify", bundle: ..., traitCollection: ...)`
    static func icon_classify(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_classify, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_full_story", bundle: ..., traitCollection: ...)`
    static func icon_full_story(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_full_story, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_menu", bundle: ..., traitCollection: ...)`
    static func icon_menu(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_menu, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_newest", bundle: ..., traitCollection: ...)`
    static func icon_newest(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_newest, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_rank", bundle: ..., traitCollection: ...)`
    static func icon_rank(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_rank, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_search", bundle: ..., traitCollection: ...)`
    static func icon_search(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_search, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 7 nibs.
  struct nib {
    /// Nib `LeftMenuViewController`.
    static let leftMenuViewController = _R.nib._LeftMenuViewController()
    /// Nib `MainFunctionView`.
    static let mainFunctionView = _R.nib._MainFunctionView()
    /// Nib `MainHeaderView`.
    static let mainHeaderView = _R.nib._MainHeaderView()
    /// Nib `MainNavigationView`.
    static let mainNavigationView = _R.nib._MainNavigationView()
    /// Nib `MainStoryCell`.
    static let mainStoryCell = _R.nib._MainStoryCell()
    /// Nib `MainStoryView`.
    static let mainStoryView = _R.nib._MainStoryView()
    /// Nib `MainViewController`.
    static let mainViewController = _R.nib._MainViewController()
    
    /// `UINib(name: "LeftMenuViewController", in: bundle)`
    static func leftMenuViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.leftMenuViewController)
    }
    
    /// `UINib(name: "MainFunctionView", in: bundle)`
    static func mainFunctionView(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.mainFunctionView)
    }
    
    /// `UINib(name: "MainHeaderView", in: bundle)`
    static func mainHeaderView(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.mainHeaderView)
    }
    
    /// `UINib(name: "MainNavigationView", in: bundle)`
    static func mainNavigationView(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.mainNavigationView)
    }
    
    /// `UINib(name: "MainStoryCell", in: bundle)`
    static func mainStoryCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.mainStoryCell)
    }
    
    /// `UINib(name: "MainStoryView", in: bundle)`
    static func mainStoryView(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.mainStoryView)
    }
    
    /// `UINib(name: "MainViewController", in: bundle)`
    static func mainViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.mainViewController)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
  struct reuseIdentifier {
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 1 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 1 localization tables.
  struct string {
    /// This `R.string.localizable` struct is generated, and contains static references to 3 localization keys.
    struct localizable {
      /// en translation: Enter key word
      /// 
      /// Locales: en, vi
      static let enterKeyWord = Rswift.StringResource(key: "EnterKeyWord", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en", "vi"], comment: nil)
      /// en translation: Newest Update
      /// 
      /// Locales: en, vi
      static let newestUpdate = Rswift.StringResource(key: "NewestUpdate", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en", "vi"], comment: nil)
      /// en translation: Watch more
      /// 
      /// Locales: en, vi
      static let watchMore = Rswift.StringResource(key: "WatchMore", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en", "vi"], comment: nil)
      
      /// en translation: Enter key word
      /// 
      /// Locales: en, vi
      static func enterKeyWord(_: Void = ()) -> String {
        return NSLocalizedString("EnterKeyWord", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Newest Update
      /// 
      /// Locales: en, vi
      static func newestUpdate(_: Void = ()) -> String {
        return NSLocalizedString("NewestUpdate", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Watch more
      /// 
      /// Locales: en, vi
      static func watchMore(_: Void = ()) -> String {
        return NSLocalizedString("WatchMore", bundle: R.hostingBundle, comment: "")
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try nib.validate()
  }
  
  struct nib: Rswift.Validatable {
    static func validate() throws {
      try _MainViewController.validate()
      try _MainFunctionView.validate()
      try _MainHeaderView.validate()
      try _MainNavigationView.validate()
    }
    
    struct _LeftMenuViewController: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "LeftMenuViewController"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }
      
      fileprivate init() {}
    }
    
    struct _MainFunctionView: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "MainFunctionView"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> MainFunctionView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MainFunctionView
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "icon_rank", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'icon_rank' is used in nib 'MainFunctionView', but couldn't be loaded.") }
        if UIKit.UIImage(named: "icon_classify", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'icon_classify' is used in nib 'MainFunctionView', but couldn't be loaded.") }
        if UIKit.UIImage(named: "icon_full_story", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'icon_full_story' is used in nib 'MainFunctionView', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct _MainHeaderView: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "MainHeaderView"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> MainHeaderView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MainHeaderView
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "icon_newest", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'icon_newest' is used in nib 'MainHeaderView', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct _MainNavigationView: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "MainNavigationView"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> MainNavigationView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MainNavigationView
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "icon_search", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'icon_search' is used in nib 'MainNavigationView', but couldn't be loaded.") }
        if UIKit.UIImage(named: "icon_menu", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'icon_menu' is used in nib 'MainNavigationView', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct _MainStoryCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "MainStoryCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> MainStoryCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MainStoryCell
      }
      
      fileprivate init() {}
    }
    
    struct _MainStoryView: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "MainStoryView"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> MainStoryView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MainStoryView
      }
      
      fileprivate init() {}
    }
    
    struct _MainViewController: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "MainViewController"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "bg_left", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'bg_left' is used in nib 'MainViewController', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  struct storyboard {
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
