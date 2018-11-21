//
//  TabViewController.swift
//  JGTabBarViewExample
//
//  Created by JungMoon-Mac on 12/11/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit
import JGTabBarView

class TabViewController: UIViewController, JGTabBar {
    public var tabTitle: String?
    
    func getTabTitle() -> String {
        return tabTitle ?? "제목"
    }
    
    func getViewController() -> UIViewController {
        return self
    }
    
    func onTouchTab() {
        
    }
    

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = self.tabTitle
    }
}
