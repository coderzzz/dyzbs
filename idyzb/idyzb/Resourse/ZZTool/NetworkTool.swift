//
//  NetworkTool.swift
//  idyzb
//
//  Created by Interest on 2017/1/18.
//  Copyright © 2017年 Interest. All rights reserved.
//

import UIKit
import Alamofire



class NetworkTool: NSObject {

    
    
    class func requestWithUrlString(url:String ,parameters: [String: AnyObject]? = nil) {
    
        
        
        Alamofire.request(.GET,url,parameters: parameters).responseData { (response) in
            
             print("request: \(response.debugDescription)")
        }
    
    }
    
}
