//
//  TopRankingView.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 7/6/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit

class TopRankingView: UIView {

    @IBOutlet weak var img1st: UIImageView!
    @IBOutlet weak var img2nd: UIImageView!
    @IBOutlet weak var img3rd: UIImageView!
    @IBOutlet weak var lbl1st: UILabel!
    @IBOutlet weak var lbl2nd: UILabel!
    @IBOutlet weak var lbl3rd: UILabel!
    @IBOutlet weak var rank1stView: UIView!
    var gradientBG: CAGradientLayer!
    
    func setupView() {
        gradientBG = CAGradientLayer()
        let colorTop = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5).cgColor
        let colorBottom = UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor
        gradientBG.colors = [colorTop, colorBottom]
        gradientBG.locations = [0.0, 1.0]
        gradientBG.frame.origin = CGPoint(x: 0, y: 0)
        gradientBG.frame.size = CGSize(width: Constants.WIDTH_OF_SCREEN, height: Constants.HEIGHT_OF_SCREEN / 10)
        //self.layer.addSublayer(gradientBG)
        
        Utils.shared.setBorderColorForView(view: img1st, borderWidth: 1, color: .white)
        Utils.shared.setBorderColorForView(view: img2nd, borderWidth: 1, color: .white)
        Utils.shared.setBorderColorForView(view: img3rd, borderWidth: 1, color: .white)
        
        Utils.shared.imageViewLoadImage(imgView: img1st, linkImage: "https://m.media-amazon.com/images/M/MV5BZmQ5NGFiNWEtMmMyMC00MDdiLTg4YjktOGY5Yzc2MDUxMTE1XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY268_CR0,0,182,268_AL_.jpg")
        Utils.shared.imageViewLoadImage(imgView: img2nd, linkImage: "https://myanimelist.cdn-dena.com/images/anime/8/20483.jpg")
        Utils.shared.imageViewLoadImage(imgView: img3rd, linkImage: "https://m.media-amazon.com/images/M/MV5BZWM3NjJhMGMtN2Y3OC00NDhjLThmMGYtZTQ0ZmY3OWI1YmI2XkEyXkFqcGdeQXVyMzExMzk5MTQ@._V1_UY268_CR6,0,182,268_AL_.jpg")
        
        Utils.shared.setTextForView(view: lbl1st, title: "Naruto Shippuuden", font: Fonts.FONT11_SF_BOLD, color: .white)
        Utils.shared.setTextForView(view: lbl2nd, title: "Inuyasha", font: Fonts.FONT11_SF_BOLD, color: .white)
        Utils.shared.setTextForView(view: lbl3rd, title: "Đại Chiến Titan 1 (Attack On Titan 1)", font: Fonts.FONT11_SF_BOLD, color: .white)
    }

}
