//
//  Utils.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit
import SDWebImage

class Utils {
    static let shared = Utils()
    
    /* Set corner radius for View */
    func setConerRadiusForView(view: UIView, num: CGFloat) {
        view.layer.cornerRadius = num
        view.layer.masksToBounds = true
    }
    
    /* Set border color for View */
    func setBorderColorForView(view: UIView, borderWidth: CGFloat, color: UIColor) {
        view.layer.borderWidth = borderWidth
        view.layer.borderColor = color.cgColor
    }
    
    func setTextForView(view: UIView, title: String?, font: UIFont, color: UIColor){
        if ((view is UILabel) || (view is UITextView )) {
            let label = view as! UILabel
            label.text = title ?? ""
            label.font = font
            label.textColor = color
            return
        }
        if view is UIButton {
            let btn = view as! UIButton
            btn.setTitle(title ?? "", for: UIControlState.normal)
            btn.setTitleColor(color, for: UIControlState.normal)
            btn.titleLabel?.font = font
            return
        }
        if view is UITextField {
            let textField = view as! UITextField
            textField.attributedPlaceholder = NSAttributedString(string: title!, attributes: [NSAttributedStringKey.foregroundColor: color])
            textField.textColor = color
            textField.tintColor = color
            textField.font = font
            return
        }
    }
    
    /* UIImageView View Image Link Use SDWebImage */
    func imageViewLoadImage(imgView: UIImageView, linkImage: String) {
        imgView.sd_setImage(with: URL(string: linkImage), placeholderImage: UIImage())
    }
    
    /*  Get Current View Controller */
    func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
}
