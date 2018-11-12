//
//  ViewController.swift
//  JGTabBarViewExample
//
//  Created by JungMoon-Mac on 09/11/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit
import JGTabBar

class ViewController: UIViewController {

    @IBOutlet weak var tabBarView: JGTabBarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let tabViewController = TabViewController(nibName: "TabViewController", bundle: nil)
        let tabViewController2 = TabViewController(nibName: "TabViewController", bundle: nil)
        tabViewController2.tabTitle = "tabViewController2"
        tabBarView.tabs = [tabViewController, tabViewController2]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("segue \(segue.destination)")
    }


}
