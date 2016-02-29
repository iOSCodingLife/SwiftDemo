//
//  MineVIewController.swift
//  MarcBiliBili
//
//  Created by Nie on 16/2/25.
//  Copyright © 2016年 Nie. All rights reserved.
//

import UIKit

class MineVIewController: BaseViewController,UITableViewDataSource,UITableViewDelegate {
    private var MinetableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.title = "我的"
       self.view.backgroundColor = UIColor.colorWithHexString("fc8529")
        
        SetUPUI()
    }
    
    
    
    func  SetUPUI()
    {
        MinetableView = UITableView(frame: CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT))
        
        MinetableView.dataSource = self
        MinetableView.delegate = self
        MinetableView.tableFooterView = UIView()
        self.view.addSubview(MinetableView)
    
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
  
             let identifier = "CellID"
                var cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? MineTableViewCell
        
                if cell == nil {
                    cell = MineTableViewCell(style: .Default, reuseIdentifier: identifier)
                }
        
                return cell!
    }

}
