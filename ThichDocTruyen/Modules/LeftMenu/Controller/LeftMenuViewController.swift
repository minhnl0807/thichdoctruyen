//
//  LeftMenuViewController.swift
//  MyRestaurant
//
//  Created by MinhNL on 6/20/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class LeftMenuViewController: BaseViewController {

    override func viewDidLayoutSubviews() {
        setupBackgroundImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func click(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupBackgroundImage() {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.frame = self.view.frame
        imageView.image = #imageLiteral(resourceName: "bg_left")
        self.view.addSubview(imageView)
        
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.view.frame
        blurEffectView.alpha = 0.8
        imageView.addSubview(blurEffectView)
    }
}
