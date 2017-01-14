//
//  TabbarViewController.swift
//  idyzb
//
//  Created by Interest on 2017/1/14.
//  Copyright © 2017年 Interest. All rights reserved.
//

import UIKit

class TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "test"
        

        let vc = UIViewController()
        vc.view.backgroundColor = UIColor.blueColor()
        let nav = BaseNavgationController(rootViewController:vc)
        self .addChildViewController(nav)
        
        
    }


}
