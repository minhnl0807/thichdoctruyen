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
        image.transform = CGAffineTransform(scaleX: 0.8, y: 0.9)
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
}
