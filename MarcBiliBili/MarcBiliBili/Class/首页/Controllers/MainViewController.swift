//
//  MainViewController.swift
//  MarcBiliBili
//
//  Created by Nie on 16/2/25.
//  Copyright © 2016年 Nie. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "首页"
        let backImageView:UIImageView = UIImageView()
        backImageView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)
        backImageView.image = self.createImageWithColor(UIColor.redColor())
        self.view.addSubview(backImageView)

    }
    
    
    
}
