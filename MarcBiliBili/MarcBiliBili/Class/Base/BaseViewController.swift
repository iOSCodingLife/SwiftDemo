//
//  BaseViewController.swift
//  MarcBiliBili
//
//  Created by Nie on 16/2/25.
//  Copyright © 2016年 Nie. All rights reserved.
//

import UIKit
//获取屏幕 宽度、高度
let SCREEN_WIDTH = (UIScreen.mainScreen().bounds.size.width)
let SCREEN_HEIGHT = (UIScreen.mainScreen().bounds.size.height)

class BaseViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
  
//    根据颜色生成图片
    func createImageWithColor(Color:UIColor)->UIImage
    {
        let rect:CGRect = CGRectMake(0, 0, 1, 1)
        UIGraphicsBeginImageContext(rect.size)
        let context:CGContextRef = UIGraphicsGetCurrentContext()!
        CGContextSetFillColorWithColor(context, Color.CGColor)
        CGContextFillRect(context, rect)
        
        let theImage:UIImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return theImage;
        
    }

}

