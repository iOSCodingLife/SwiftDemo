//
//  UIDevice + Extension.swift
//  MarcBiliBili
//
//  Created by Nie on 16/2/25.
//  Copyright © 2016年 Nie. All rights reserved.
//

import UIKit

extension UIDevice {
        
    class func currentDeviceScreenMeasurement() -> CGFloat {
        var deviceScree: CGFloat = 3.5
        
        if ((568 == SCREEN_HEIGHT && 320 == SCREEN_WIDTH) || (1136 == SCREEN_HEIGHT && 640 == SCREEN_WIDTH)) {
            deviceScree = 4.0;
        } else if ((667 == SCREEN_HEIGHT && 375 == SCREEN_WIDTH) || (1334 == SCREEN_HEIGHT && 750 == SCREEN_WIDTH)) {
            deviceScree = 4.7;
        } else if ((736 == SCREEN_HEIGHT && 414 == SCREEN_WIDTH) || (2208 == SCREEN_HEIGHT && 1242 == SCREEN_WIDTH)) {
            deviceScree = 5.5;
        }
        
        return deviceScree
    }
}