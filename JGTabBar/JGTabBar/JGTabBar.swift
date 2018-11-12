//
//  JGTabBar.swift
//  JGTabBarView
//
//  Created by JungMoon-Mac on 12/11/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

public protocol JGTabBar {
    func getTabTitle() -> String
    func getViewController() -> UIViewController
    func onTouchedTab()
}
