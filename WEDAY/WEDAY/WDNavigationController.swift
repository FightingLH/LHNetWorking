//
//  WDNavigationController.swift
//  WEDAY
//
//  Created by 李欢 on 2018/7/23.
//  Copyright © 2018年 李欢. All rights reserved.
//

import UIKit

class WDNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.isNavigationBarHidden = true;
        self.isToolbarHidden = true;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true;
        }
        super.pushViewController(viewController, animated: true)
    }
   

}
