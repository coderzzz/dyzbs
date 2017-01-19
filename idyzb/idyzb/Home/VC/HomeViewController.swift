//
//  HomeViewController.swift
//  idyzb
//
//  Created by Interest on 2017/1/14.
//  Copyright © 2017年 Interest. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = CGRect(x: 0, y: 64, width: kScreenW, height: 40)
        let titleview = ZZScorllTitleView(frame: rect, titles: ["title1","title2"])
        view .addSubview(titleview)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
