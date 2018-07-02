//
//  ApiClient.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/28/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import Alamofire
import SwiftyJSON

class ApiClient: NSObject {
    static let shared = ApiClient()
    
    func testAPIChapter(complete: @escaping(_ res: [String]) -> ()) {
        let requestUrl = "https://cffc502f.ngrok.io/api"
        
        Alamofire.request(requestUrl, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil)
            .responseJSON { response in
                switch(response.result) {
                case .success(_):
                    if response.result.value != nil {
                        let resJson = JSON(response.result.value!)
                        if let success = resJson["success"].bool {
                            if success {
                                if let datas = resJson["data"].array {
                                    var res: [String] = []
                                    for data in datas {
                                        res.append(data.string ?? "")
                                    }
                                    complete(res)
                                    return
                                }
                            }
                        }
                    }
                    complete([])
                    break
                case .failure(_):
                    complete([])
                    break
                }
        }
    }
}
