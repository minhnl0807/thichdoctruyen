//
//  DetailChapterViewController.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/29/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class DetailChapterViewController: BaseViewController {

    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var tbChapter: UITableView!
    var story: StoryModel!
    var isFirstSetupBGImg: Bool = true
    var listUrls: [String] = ["https://2.bp.blogspot.com/-bcHvDMZIJyI/Vjr8RS4oixI/AAAAAAAAhz8/bQKBuPUkflk/s0/563afc4230f32.jpg?imgmax=3000",
                              "https://4.bp.blogspot.com/-pb0tL2TDB4Q/Vjr8SnX-j6I/AAAAAAAAh0E/HnGfTPRYQy8/s0/563afc46568b1.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-yxNaQO_XyiA/Vjr8TdvG09I/AAAAAAAAh0I/SSSY-IKpnh4/s0/563afc4b48a4c.jpg?imgmax=3000",
                              "https://4.bp.blogspot.com/-DFBYVS-R-EU/Vjr8U6ocmzI/AAAAAAAAh0U/7Z2J85Ep8S0/s0/563afc4e5d8d0.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-Jz3zeHvCL0Y/Vjr8W-2anwI/AAAAAAAAh0g/r-RGRAGU8pM/s0/563afc5539bf5.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-4Km8EA_AcBM/Vjr8Ye3ZkRI/AAAAAAAAh0s/GFF9pufM1vA/s0/563afc5c9bc7e.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-usQWXZVJADg/Vjr8Zz6jt7I/AAAAAAAAh00/5aquYDImXD8/s0/563afc631a5b3.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-1h9NAupi7CI/Vjr8bNJlOvI/AAAAAAAAh1E/cQzBE9RhGZI/s0/563afc685417d.jpg?imgmax=3000",
                              "https://4.bp.blogspot.com/-tos8XkY6WRo/Vjr8cW-CU0I/AAAAAAAAh1U/E6qo4TONEtA/s0/563afc6d22b1e.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-0lMd3AcQxV0/Vjr8eIdJ5RI/AAAAAAAAh1k/J9PcuqY9ZnY/s0/563afc73168d8.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-AuwXTW_q4UU/Vjr8fQZGNDI/AAAAAAAAh14/W4Qxze13AXc/s0/563afc7940293.jpg?imgmax=3000",
                              "https://2.bp.blogspot.com/-CPTDGf-tjmQ/Vjr8hckNiEI/AAAAAAAAh2I/gtSJG2bNgEk/s0/563afc7eeef52.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-w4szzXbr3vc/Vjr8i90tfEI/AAAAAAAAh2c/JOOB3Q0E_Wo/s0/563afc8679b87.jpg?imgmax=3000",
                              "https://2.bp.blogspot.com/-Kx1i7GO32-g/Vjr8kpHs1qI/AAAAAAAAh2s/1ZbBvlWlpgI/s0/563afc8d0b449.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-j6p9kobCdoQ/Vjr8mcHCELI/AAAAAAAAh3I/r5vz2hzgJAE/s0/563afc937b2c1.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-_5bnfgARNH0/Vjr8oDztdUI/AAAAAAAAh3Y/NB68E07p-PA/s0/563afc9b11050.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-3lTjCT70gmQ/Vjr8p_1JD5I/AAAAAAAAh3o/Isuh1i09yqo/s0/563afca1e489d.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-tTHMs2ZCBh0/Vjr8rt3RnpI/AAAAAAAAh4I/DJTMxR4mH_0/s0/563afca9620cb.jpg?imgmax=3000",
                              "https://2.bp.blogspot.com/-2eyWZTe1zLQ/Vjr8taS7FVI/AAAAAAAAh4g/0ODUtvqTxzE/s0/563afcaf434a9.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-zSxhwOixOms/Vjr8vHlBhqI/AAAAAAAAh4w/Rd3nccsE6KU/s0/563afcb694cca.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-RChNFSZCyuc/Vjr8xLPLv0I/AAAAAAAAh5I/E-krfVMahDA/s0/563afcbddcc3b.jpg?imgmax=3000",
                              "https://4.bp.blogspot.com/-Z69PDYuYTCM/Vjr8y3mt4SI/AAAAAAAAh5o/rY4tPuCG_oo/s0/563afcc6011ec.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-2FaVRipBaN8/Vjr809l5lGI/AAAAAAAAh58/SZ0NEap_6-Q/s0/563afccda8d53.jpg?imgmax=3000",
                              "https://2.bp.blogspot.com/-bZHkxjm8pjQ/Vjr82hUor1I/AAAAAAAAh6M/rv0odePYNhg/s0/563afcd4707dc.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-0NCa2M-ZHtA/Vjr84N46ANI/AAAAAAAAh6Y/0IXLxanrziI/s0/563afcdc5d583.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-lxvhRBo55ng/Vjr86M__p4I/AAAAAAAAh6o/hyneFGq13mA/s0/563afce258c4b.jpg?imgmax=3000",
                              "https://2.bp.blogspot.com/-zPXKw_9XwGg/Vjr87lujeGI/AAAAAAAAh68/XFqlN7a0Gyw/s0/563afce96297c.jpg?imgmax=3000",
                              "https://4.bp.blogspot.com/-_9-T-iNG-kw/Vjr89ZnMFRI/AAAAAAAAh7Q/5UgYR9IHerc/s0/563afcf020ead.jpg?imgmax=3000",
                              "https://4.bp.blogspot.com/-9bz1seuFoJI/Vjr8-o3Y5zI/AAAAAAAAh7c/vA7s-6XwUEA/s0/563afcf627115.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-S6tZalwZ3h8/Vjr9ABgHelI/AAAAAAAAh7o/PUGdVA5HE9A/s0/563afcfc18d1c.jpg?imgmax=3000",
                              "https://4.bp.blogspot.com/-mOIUOmH0Vxo/Vjr9BzfdmoI/AAAAAAAAh7s/EN4b8_BIFjw/s0/563afd01d46b3.jpg?imgmax=3000",
                              "https://4.bp.blogspot.com/-AIhFuA6drnU/Vjr9DYhhNsI/AAAAAAAAh74/rBxOujyk0NY/s0/563afd08eee31.jpg?imgmax=3000",
                              "https://2.bp.blogspot.com/-rzMFgLhfo34/Vjr9Eso2hCI/AAAAAAAAh78/k9ppeelznoY/s0/563afd0eaede2.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-61YrSOt0EkM/Vjr9GPNtICI/AAAAAAAAh8M/IoZspFiGPDc/s0/563afd13a0c01.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-U6fRnedu8EY/Vjr9HNcQaHI/AAAAAAAAh8Q/bowG1mw4KQg/s0/563afd1930ac2.jpg?imgmax=3000",
                              "https://2.bp.blogspot.com/-WXzcI7Vs8qE/Vjr9In_b6RI/AAAAAAAAh8U/VW-U50d6zkM/s0/563afd1dc62f1.jpg?imgmax=3000",
                              "https://2.bp.blogspot.com/-DdN226t37ns/Vjr9KFkYTUI/AAAAAAAAh8Y/1mCc3erY2-A/s0/563afd2386d8b.jpg?imgmax=3000",
                              "https://4.bp.blogspot.com/-ZAaVWUKHlls/Vjr9LdPPbAI/AAAAAAAAh8c/zuINzP-U-_A/s0/563afd29391aa.jpg?imgmax=3000",
                              "https://2.bp.blogspot.com/-pP-owT6a52g/Vjr9NGQIQwI/AAAAAAAAh8k/TTs-qDN3Kzk/s0/563afd2eccde7.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-VD2BZBuvYS4/Vjr9OZhT4ZI/AAAAAAAAh8w/rhGbzc1lEBw/s0/563afd3547b19.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-WcwL4JYOzrA/Vjr9PwhZX1I/AAAAAAAAh88/Vj8wxbUCjB8/s0/563afd3b0fe55.jpg?imgmax=3000",
                              "https://2.bp.blogspot.com/-3UJi0IiTDGw/Vjr9RfH8O4I/AAAAAAAAh9A/eyuWPwetNoU/s0/563afd40d4f26.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-QFLNuXIq_7M/Vjr9StkM_eI/AAAAAAAAh9Q/5fe_oXV7v3A/s0/563afd466fa5d.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-EKPnbcXCyLI/Vjr9TrJjCaI/AAAAAAAAh9Y/id-52N14Jos/s0/563afd4af1f48.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-RX8T3MvihCA/Vjr9VHRRp6I/AAAAAAAAh9g/FwqTT3Kw7kY/s0/563afd4fc817d.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-iSZpYSUAMCw/Vjr9WhsU3VI/AAAAAAAAh9o/xyLqWgh5PpE/s0/563afd5526819.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-KySTwZRfsK8/Vjr9YEHbcbI/AAAAAAAAh9w/79KWFG08ZPM/s0/563afd5bdaf69.jpg?imgmax=3000",
                              "https://4.bp.blogspot.com/-wG74rH6NzwQ/Vjr9ZmLJHoI/AAAAAAAAh90/c9LRCOaFous/s0/563afd61cf100.jpg?imgmax=3000",
                              "https://2.bp.blogspot.com/-IBlWbiyF9uI/Vjr9cHCivpI/AAAAAAAAh98/i8MZxtJLTrw/s0/563afd67d9280.jpg?imgmax=3000",
                              "https://1.bp.blogspot.com/-_3GhdhquABo/Vjr9dWX8h0I/AAAAAAAAh-A/evpyBTjzLjQ/s0/563afd715955c.jpg?imgmax=3000",
                              "https://3.bp.blogspot.com/-iQcc0FOh8n8/Vjr9ewjm0uI/AAAAAAAAh-E/dlVkdDn3Oc0/s0/563afd76addee.jpg?imgmax=3000",
                              "https://2.bp.blogspot.com/-NXm5F_-Jaz4/Vjr9f8Jg24I/AAAAAAAAh-M/UtkBRka7IL0/s0/563afd7c19fa2.jpg?imgmax=3000",
                              "https://4.bp.blogspot.com/-wdNkz9fIBTE/Vjr9hIr9nNI/AAAAAAAAh-Q/xtUxTLhLE0A/s0/563afd80de5fe.jpg?imgmax=3000",
                              "https://4.bp.blogspot.com/-HavhSPinjOs/Vjr9j1eBJLI/AAAAAAAAh-g/_QarYlg0vNU/s0/563afd8ac82d6.jpg?imgmax=3000"]
    var listImages: [UIImage] = []
    var numberIndexLoaded: Int = 0
    var maximumImagesLoad: Int = 5
    var timesLoadMore: Int = 1
    var isAllowLoadMore: Bool = true
    var isFirstLoadLastCell: Bool = true
    var contentOffSet: CGPoint = CGPoint(x: 0, y: 0)
    
    override func navigationBarView() -> UIView? {
        return navigationView
    }
    
    override func navigationBarTitle() -> String? {
        return story.name
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UtilAnimates.shared.animateAppearViewController(viewController: self) {
            
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if isFirstSetupBGImg {
            setupBackgroundImage()
            isFirstSetupBGImg = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
    }
    
    func setupView() {
        tbChapter.delegate = self
        tbChapter.dataSource = self
        tbChapter.separatorColor = .clear
        tbChapter.register(UINib(nibName: Cells.DETAIL_CHAPTER_CELL, bundle: nil), forCellReuseIdentifier: Cells.DETAIL_CHAPTER_CELL)
        tbChapter.backgroundColor = .clear
        
        self.view.backgroundColor = .clear
        //apiLoadChapter()
    }
    
    func setupBackgroundImage() {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.frame = self.view.frame
        imageView.image = #imageLiteral(resourceName: "splash")
        imageView.clipsToBounds = true
        self.view.addSubview(imageView)
        
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.view.frame
        blurEffectView.alpha = 1
        imageView.addSubview(blurEffectView)
        self.view.sendSubview(toBack: imageView)
    }
    
    func setupData() {
        if numberIndexLoaded >= listUrls.count {
            //print("Cannot reload data")
            let contentOffSet = tbChapter.contentOffset
            tbChapter.reloadData()
            tbChapter.layoutIfNeeded()
            tbChapter.setContentOffset(contentOffSet, animated: false)
            return
        }
        
        if numberIndexLoaded > (maximumImagesLoad * timesLoadMore) - 1 {
            //print("Reload table and allow loading more...")
            isAllowLoadMore = true
            let contentOffSet = tbChapter.contentOffset
            isFirstLoadLastCell = true
            tbChapter.reloadData()
            tbChapter.layoutIfNeeded()
            tbChapter.setContentOffset(contentOffSet, animated: false)
            return
        }
        
        Alamofire.request(listUrls[numberIndexLoaded], method: .get).responseImage { response in
            guard let image = response.result.value else {
                // Handle error
                return
            }
            self.listImages.append(image)
            self.numberIndexLoaded = self.numberIndexLoaded + 1
            self.setupData()
        }
    }
    
    func apiLoadChapter() {
        ApiClient.shared.testAPIChapter { (listUrls) in
            if listUrls.count > 0 {
                self.listUrls = listUrls
                self.tbChapter.reloadData()
            }
        }
    }
}

extension DetailChapterViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("Number of images: " + String(listImages.count))
        return listImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbChapter.dequeueReusableCell(withIdentifier: Cells.DETAIL_CHAPTER_CELL, for: indexPath) as! DetailChapterCell
        //cell.setupView(url: listUrls[indexPath.row], tbChapper: tbChapter, indexPath: indexPath)
        cell.setupView(image: listImages[indexPath.row], numberPage: String(indexPath.row + 1))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (Constants.WIDTH_OF_SCREEN - 32) / (listImages[indexPath.row].size.width / listImages[indexPath.row].size.height)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == tbChapter.numberOfRows(inSection: 0) - 1 && !isFirstLoadLastCell && isAllowLoadMore {
            print("LOADINGGGGGGGGGG MORE")
            timesLoadMore = timesLoadMore + 1
            isAllowLoadMore = false
            setupData()
        } else if indexPath.row == tbChapter.numberOfRows(inSection: 0) - 1 && isFirstLoadLastCell {
            print("Frist load last cell")
            isFirstLoadLastCell = false
        }
    }
}

extension DetailChapterViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let currentOffset = scrollView.contentOffset.y
//        let maximumOffset = scrollView.contentSize.height - scrollView.frame.size.height
//        //print(maximumOffset - currentOffset)
//        if (maximumOffset - currentOffset) < 1 && (maximumOffset - currentOffset) > -1 {
//            if isAllowLoadMore {
//                print("Load more started...")
//                isAllowLoadMore = false
//                tbChapter.isScrollEnabled = false
//                timesLoadMore = timesLoadMore + 1
//                self.setupData()
//            } else {
//                print("Loading...")
//            }
//        }
        self.contentOffSet = scrollView.contentOffset
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        let currentOffset = scrollView.contentOffset.y
//        let maximumOffset = scrollView.contentSize.height - scrollView.frame.size.height
//        //print(maximumOffset - currentOffset)
//        if (maximumOffset - currentOffset) < 10.0 {
//            if isAllowLoadMore {
//                print("Load more started...")
//                isAllowLoadMore = false
//                timesLoadMore = timesLoadMore + 1
//                self.setupData()
//            } else {
//                print("Loading...")
//            }
//        }
    }
}
