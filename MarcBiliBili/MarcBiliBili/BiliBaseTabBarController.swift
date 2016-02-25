//
//  BiliBaseTabBarController.swift
//  MarcBiliBili
//
//  Created by Nie on 16/2/25.
//  Copyright © 2016年 Nie. All rights reserved.
//

import UIKit

class BiliBaseTabBarController: UITabBarController {

    override class func initialize(){
        
        var attr = [String:AnyObject]()
        
        attr[NSForegroundColorAttributeName] = UIColor(red: 81/255, green: 81/255, blue: 81/255, alpha: 1)
        // 设置tabbarItem的字体选中的颜色
        UITabBarItem.appearance().setTitleTextAttributes(attr, forState:.Selected)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.GreatSubViewControllers()
        
    }
    
    
    
    func GreatSubViewControllers()
    {
//        let mainVC = MainViewController()
//        let Item1:UITabBarItem = UITabBarItem(title: "首页", image: UIImage(named: "tabBar_essence_icon"), selectedImage:  UIImage(named: "tabBar_essence_click_icon"))
//         mainVC.tabBarItem = Item1
        
        let mainVC = MainViewController()
        let Item1:UITabBarItem = UITabBarItem(title: "首页", image: UIImage(named: "tabBar_essence_icon"), selectedImage:  self.ChangeImageMode("tabBar_essence_click_icon"))
        mainVC.tabBarItem = Item1
      
        
        let AttentionVC = AttentionViewController()
        let Item2:UITabBarItem = UITabBarItem(title: "关注", image: UIImage(named: "tabBar_friendTrends_icon.png"), selectedImage: self.ChangeImageMode( "tabBar_friendTrends_click_icon.png"))
        AttentionVC.tabBarItem = Item2
        
        let FondVC = FondViewController()
        let Item3:UITabBarItem = UITabBarItem(title: "发现", image: UIImage(named: "tabBar_new_icon.png"), selectedImage:  self.ChangeImageMode( "tabBar_new_click_icon.png"))
        FondVC.tabBarItem = Item3
        
        let mineVC = MineVIewController()
        let Item4:UITabBarItem = UITabBarItem(title: "我的", image: UIImage(named: "tabBar_me_icon.png"), selectedImage:  self.ChangeImageMode( "tabBar_me_click_icon.png"))
        mineVC.tabBarItem = Item4

        let tabArray = [mainVC,AttentionVC,FondVC,mineVC]
        self.viewControllers = tabArray


        
        
        
    }
    
    
    func ChangeImageMode(imageName:String)->UIImage
    {
        var image:UIImage = UIImage()
        image = UIImage(named:imageName)!
        image.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
         return image
        
    }
    
}
