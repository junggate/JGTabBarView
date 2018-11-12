//
//  JGTabBarView.swift
//  JGTabBarView
//
//  Created by JungMoon-Mac on 09/11/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

@IBDesignable public class JGTabBarView: UIView {
    static let defaultBundel = Bundle(identifier: "com.junggate.jgtabbar")
    var tabBarContentsView: JGTabBarContentsView?
    public var tabs: [JGTabBar]? {
        set {
            tabBarContentsView?.tabs = newValue
        }
        get {
            return tabBarContentsView?.tabs
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let tabBarContents = UINib(nibName: "JGTabBarContentsView", bundle: JGTabBarView.defaultBundel)
            .instantiate(withOwner: self, options: nil).first as! JGTabBarContentsView
        addSubview(tabBarContents)
        tabBarContents.translatesAutoresizingMaskIntoConstraints = false
        tabBarContents.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        tabBarContents.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        tabBarContents.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        tabBarContents.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.tabBarContentsView = tabBarContents
    }
}
