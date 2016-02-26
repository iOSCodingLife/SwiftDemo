//
//  GlobalDefine.swift
//  MarcBiliBili
//
//  Created by Nie on 16/2/25.
//  Copyright © 2016年 Nie. All rights reserved.
//

import UIKit

//获取屏幕 宽度、高度
let SCREEN_WIDTH = (UIScreen.mainScreen().bounds.size.width)
let SCREEN_HEIGHT = (UIScreen.mainScreen().bounds.size.height)

let kWITHSCALE  = ((UIScreen.mainScreen().bounds.size.width) / 375)
let kWITHSCALE_4 = ((UIScreen.mainScreen().bounds.size.width) / 320)

////颜色
//let UIColorFromHex(hex) = [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1.0]
//let HWColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
//// 随机色
//let RandomColor = HWColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))
//

// 默认图片
let defaultImg = UIImage(named: "photo_define")
// NSUserDefault
let userDefault = NSUserDefaults.standardUserDefaults()
// 通知中心
let notice = NSNotificationCenter.defaultCenter()
//判断是不是plus
let currentModeSize = UIScreen.mainScreen().currentMode?.size
let isPlus = UIScreen.instancesRespondToSelector("currentMode") ? CGSizeEqualToSize(CGSizeMake(1242, 2208), currentModeSize!) : false
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
//根据键盘监控  获取键盘高度
func getKeyBoardHeight(aNotification:NSNotification)->CGFloat{
    var uInfo   = aNotification.userInfo as NSDictionary!
    let avalue = uInfo["UIKeyboardFrameEndUserInfoKey"] as! NSValue
    let keyrect : CGRect = avalue.CGRectValue()
    let keyheight : CGFloat = keyrect.size.height;
    return keyheight
}
////获取目录下存储的json文件并解析为集合
//func getNativeJson(filename : String,fileext : String)->AnyObject{
//    let pathsBun = NSBundle.mainBundle()
//    let paths = pathsBun.pathForResource(filename, ofType : fileext)
//    var errors:NSError?
//    var content : NSData = NSData(contentsOfFile: paths!, options : .DataReadingMappedIfSafe, error: nil)!
//    var returneddata: AnyObject?  = NSJSONSerialization.JSONObjectWithData(content as NSData, options:NSJSONReadingOptions.MutableContainers, error:&errors)
//    return returneddata!
//}
//消息提醒
func showAlertView(title:String,message:String)
{
    var alert = UIAlertView()
    alert.title = title
    alert.message = message
    alert.addButtonWithTitle("好")
    alert.show()
}
//获取本地存储数据
func get_userDefaults(key : String)->AnyObject?{
    
    var saveStr : AnyObject! = userDefault.objectForKey(key)
    saveStr = (saveStr == nil) ? "" : saveStr
    return saveStr
}
//存储数据
func save_userDefaults(key : String,value:AnyObject?){
    
    userDefault.setObject(value!, forKey:key)
}
////字符串转数组
//func stringToArray(str:String)->NSArray{
//    var dataArray:[String] = []
//    for items in str{
//        dataArray.append("\(items)")
//    }
//    return dataArray
//}


//安卓16进制颜色

func colorWithHexString (hex:String) -> UIColor {
    var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
    
    if (cString.hasPrefix("#")) {
        cString = (cString as NSString).substringFromIndex(1)
    }
    
    //        if (countElements(cString) != 6) {
    //            return UIColor.grayColor()
    //        }
    
    if (cString.characters.count != 6)
    {
        
        return UIColor.grayColor()
    }
    
    let rString = (cString as NSString).substringToIndex(2)
    let gString = ((cString as NSString).substringFromIndex(2) as NSString).substringToIndex(2)
    let bString = ((cString as NSString).substringFromIndex(4) as NSString).substringToIndex(2)
    
    var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
    NSScanner(string: rString).scanHexInt(&r)
    NSScanner(string: gString).scanHexInt(&g)
    NSScanner(string: bString).scanHexInt(&b)
    
    
    return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
}





