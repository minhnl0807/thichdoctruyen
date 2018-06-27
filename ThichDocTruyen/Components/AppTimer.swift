//
//  AppTimer.swift
//  ThichDocTruyen
//
//  Created by MinhNL on 6/26/18.
//  Copyright © 2018 MinhNL. All rights reserved.
//

import Foundation

class AppTimer: NSObject {
    var action: () -> Void = {}
    var interval = 0.1
    var repeats = true
    var delay = 0.3
    
    private var timer: Timer?
    
    convenience init(action: @escaping () -> Void) {
        self.init(interval: 0.1, repeats: true, afterDelay: 0.3, action: action)
    }
    
    convenience init(delay: TimeInterval, action: @escaping () -> Void) {
        self.init(interval: 0, repeats: false, afterDelay: delay, action: action)
    }
    
    init(interval: TimeInterval, repeats: Bool, afterDelay: TimeInterval, action: @escaping () -> Void) {
        self.interval = interval
        self.repeats = repeats
        self.delay = afterDelay
        self.action = action
    }
    
    func run() {
        self.stop()
        self.perform(#selector(AppTimer.prepareAction(object:)), with: nil, afterDelay: self.delay)
    }
    
    func stop() {
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(AppTimer.prepareAction(object:)), object: nil)
        
        if self.timer != nil {
            self.timer!.invalidate()
        }
        
        self.timer = nil
    }
    
    @objc func prepareAction(object: AnyObject) {
        self.timer = Timer.scheduledTimer(timeInterval: self.interval,
                                          target: self,
                                          selector: #selector(AppTimer.performAction(timer:)),
                                          userInfo: nil,
                                          repeats: self.repeats)
    }
    
    @objc func performAction(timer: Timer) {
        self.action()
    }
}
