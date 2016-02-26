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

// 默认图片
let defaultImg = UIImage(named: "photo_define")
// NSUserDefault
let userDefault = NSUserDefaults.standardUserDefaults()
// 通知中心
let notice = NSNotificationCenter.defaultCenter()
//判断是不是plus
let currentModeSize = UIScreen.mainScreen().currentMode?.size
let isPlus = UIScreen.instancesRespondToSelector("currentMode") ? CGSizeEqualToSize(CGSizeMake(1242, 2208), currentModeSize!) : false

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







