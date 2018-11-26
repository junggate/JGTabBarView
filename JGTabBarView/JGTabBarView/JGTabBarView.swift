//
//  JGTabBarView.swift
//  JGTabBarView
//
//  Created by JungMoon-Mac on 09/11/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

@IBDesignable public class JGTabBarView: UIView {
    static var defaultBundel: Bundle? {
        get {
            let podBundle = Bundle(for: JGTabBarView.self)
            if let url = podBundle.url(forResource: "JGTabBarView", withExtension: "bundle") {
                let bundle = Bundle(url: url)
                return bundle
            }
            return nil
        }
    }
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
        initialize()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    // MARK: - public
    open func refreshCurrentTab() {
        tabBarContentsView?.refreshCurrentTab()
    }
    
    private func initialize() {
        let tabBarContents = UINib(nibName: "JGTabBarContentsView", bundle: Bundle(for: JGTabBarContentsView.self))
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
