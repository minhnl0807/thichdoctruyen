//
//  UtilAnimates.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/21/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class UtilAnimates {
    static let shared = UtilAnimates()
    
    func animateSelectStory(cell: UIView, completion: @escaping () -> ()) {
        cell.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        cell.backgroundColor = UIColor.lightGray
        UIView.animate(withDuration: 0.15, animations: {
            cell.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            cell.backgroundColor = .clear
        }) { (_) in
            UIView.animate(withDuration: 0.15, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: { (_) in
                completion()
            })
        }
    }
    
    func animateHigtlightImage(image: UIView) {
        image.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1, animations: {
            image.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (_) in
            UIView.animate(withDuration: 1, animations: {
                image.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }, completion: { (_) in
                self.animateHigtlightImage(image: image)
            })
        }
    }
    
    func animatePresent(view: UIView, completion: @escaping (MainStoryCell) -> ()) {
        if let v = view as? MainStoryCell {
            let viewFly = Bundle.main.loadNibNamed(Cells.MAIN_STORY, owner: DataManager.shared.navigationController, options: nil)?.first as! MainStoryCell
            viewFly.frame = v.frame
            viewFly.imgStory.image = v.imgStory.image
            
            viewFly.frame.origin = (v.superview?.convert(v.frame.origin, to: nil))!
            viewFly.lblStory.isHidden = true
            DataManager.shared.navigationController.topViewController?.view.addSubview(viewFly)
            
            UIView.animate(withDuration: 0.5, animations: {
                viewFly.frame.origin.x = DataManager.shared.navigationController.view.center.x - (viewFly.frame.size.width / 2)
                viewFly.frame.origin.y = DataManager.shared.navigationController.view.center.y - (viewFly.frame.size.height / 2)
                viewFly.alpha = 0.5
            }) { (_) in
                completion(viewFly)
            }
        }
    }
    
    func animateAppearViewController(viewController: UIViewController, completion: @escaping () -> ()) {
        viewController.view.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        //viewController.view.frame.origin = CGPoint(x: 8, y: 72)
        //Utils.shared.setConerRadiusForView(view: viewController.view, num: Constants.HEIGHT_OF_SCREEN)
        UIView.animate(withDuration: 0.5, animations: {
            viewController.view.transform = CGAffineTransform.identity
            //viewController.view.frame.origin = CGPoint(x: 0, y: 20)
            //Utils.shared.setConerRadiusForView(view: viewController.view, num: 0)
        }) { (_) in
            completion()
        }
    }
    
    func animateDisappearViewController(viewController: UIViewController) {
        UIView.animate(withDuration: 0.5, animations: {
            viewController.view.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        }) { (_) in
            viewController.dismiss(animated: false, completion: nil)
        }
    }
    
    func animateSelectChapter(cell: UIView, completion: @escaping () -> ()) {
        cell.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        cell.backgroundColor = UIColor.lightGray
        cell.alpha = 0.5
        UIView.animate(withDuration: 0.1, animations: {
            cell.alpha = 1
            cell.transform = CGAffineTransform.identity
            cell.backgroundColor = .clear
        }) { (_) in
            completion()
        }
    }
    
    func animateSelectCategory(view: UIView, point: CGPoint, text: String, completion: @escaping () -> ()) {
        UIView.animate(withDuration: 0.2, animations: {
            view.frame.origin = point
            view.frame.size = CGSize(width: text.width(withConstraintedHeight: 44, font: Fonts.FONT15_SF_BOLD) + 15, height: 44)
        }) { (_) in
            completion()
        }
    }
}
