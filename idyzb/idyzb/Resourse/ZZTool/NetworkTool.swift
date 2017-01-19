//
//  NetworkTool.swift
//  idyzb
//
//  Created by Interest on 2017/1/18.
//  Copyright © 2017年 Interest. All rights reserved.
//

import UIKit
import Alamofire

public enum MethodType :String {
    case POST ,GET
}

class NetworkTool: NSObject {

    class func requestWithUrlString(url:String ,method: MethodType ,parameters: [String: AnyObject]? = nil ,completionHandler: Response<NSData, NSError> -> Void) {

        
        guard  method == .GET else{
            
            Alamofire.request(.POST,url,parameters: parameters).responseData { (response) in
                
                completionHandler(response)
            }
            
            return
        }
        
        Alamofire.request(.GET,url,parameters: parameters).responseData { (response) in
            
            completionHandler(response)
        }

    }
    
}
