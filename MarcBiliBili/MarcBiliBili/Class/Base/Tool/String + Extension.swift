//
//  String + Extension.swift
//  MarcBiliBili
//
//  Created by Nie on 16/2/25.
//  Copyright © 2016年 Nie. All rights reserved.
//

import UIKit

extension String {
    
    /// 清除字符串小数点末尾的0
    func cleanDecimalPointZear() -> String {

        let newStr = self as NSString
        var s = NSString()
        
        var offset = newStr.length - 1
        while offset > 0 {
            s = newStr.substringWithRange(NSMakeRange(offset, 1))
            if s.isEqualToString("0") || s.isEqualToString(".") {
                offset--
            } else {
                break
            }
        }
        
        return newStr.substringToIndex(offset + 1)
    }
    
    //判断字符串是否为空
    func trimString(str:String)->String{
        var nowStr = str.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        return nowStr
    }
 
    
    //去除空格和回车
    func trimLineString(str:String)->String{
        var nowStr = str.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        return nowStr
    }
    
    //获取本地存储数据
    func get_userDefaults(key : String)->AnyObject?{
        
        var saveStr : AnyObject! = userDefault.objectForKey(key)
        saveStr = (saveStr == nil) ? "" : saveStr
        return saveStr
    }

}