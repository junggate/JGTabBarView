//
//  TabViewController.swift
//  JGTabBarViewExample
//
//  Created by JungMoon-Mac on 12/11/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit
import JGTabBar
class TabViewController: UIViewController, JGTabBar {
    public var tabTitle: String?
    
    func getTabTitle() -> String {
        return tabTitle ?? "제목"
    }
    
    func getViewController() -> UIViewController {
        return self
    }
    
    func onTouchedTab() {
        
    }
    

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = self.tabTitle
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
