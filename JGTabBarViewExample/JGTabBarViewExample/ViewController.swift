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
        
        
        var views: [TabViewController] = []
        (1...4).forEach { (index) in
            let tabViewController = TabViewController(nibName: "TabViewController", bundle: nil)
            tabViewController.tabTitle = "Button\(index)"
            views.append(tabViewController)
            
            tabViewController.view.backgroundColor = UIColor(red: CGFloat.random(in: 220...255)/255.0,
                                                             green: CGFloat.random(in: 220...255)/255.0,
                                                             blue: CGFloat.random(in: 220...255)/255.0,
                                                             alpha: 1.0)
        }
        tabBarView.tabs = views
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("segue \(segue.destination)")
    }


}
