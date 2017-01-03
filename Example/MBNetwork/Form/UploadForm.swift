//
//  UploadForm.swift
//  MBNetwork
//
//  Created by ZhengYidong on 01/01/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import MBNetwork
import Alamofire

struct UploadMultiFormDataForm: MBUploadMultiFormDataFormable {
    var multipartFormData: (MultipartFormData) -> Void = { multipartFormData in
//        multipartFormData.append(, withName: "unicorn")
//        multipartFormData.append("", withName: "rainbow")
    }
    
    /// request url
    var url: String  = "https://httpbin.org/post"
}

struct UploadImageForm: MBUploadDataFormable {
    /// request url
    public var url: String = "https://httpbin.org/post"

    var data: Data  = UIImagePNGRepresentation(UIImage(named: "head_image")!)!
}