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
       
        
        
        let item1 = UITabBarItem (title: "首页", image: UIImage(named: "tabbar_home"), selectedImage: UIImage(named: "tabbar_home_selected"))
        let vc = HomeViewController()
        vc.tabBarItem = item1;
        let nav = BaseNavgationController(rootViewController:vc)
        
        let litme = UITabBarItem()
        litme.title = "直播"
        let lvc = LiveViewController()
        lvc.tabBarItem = litme;
        lvc.view.backgroundColor = UIColor.yellowColor()
        let lnav = BaseNavgationController(rootViewController:lvc)
        
        let fitme = UITabBarItem()
        fitme.title = "关注"
        let fvc = FocusViewController()
        fvc.tabBarItem = fitme;
        fvc.view.backgroundColor = UIColor.redColor()
        let fnav = BaseNavgationController(rootViewController:fvc)
        
        let ditme = UITabBarItem()
        ditme.title = "发现"
        let dvc = DiscoverViewController()
        dvc.tabBarItem = ditme;
        dvc.view.backgroundColor = UIColor.whiteColor()
        let dnav = BaseNavgationController(rootViewController:dvc)
        
        let mitme = UITabBarItem()
        mitme.title = "我的"
        let mvc = MineViewController()
        mvc.tabBarItem = mitme;
        mvc.view.backgroundColor = UIColor.purpleColor()
        let mnav = BaseNavgationController(rootViewController:mvc)
        
        self.viewControllers = [nav,lnav,fnav,dnav,mnav]
        
        
    }


}
