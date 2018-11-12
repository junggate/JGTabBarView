//
//  JGTabBarView.swift
//  JGTabBarView
//
//  Created by JungMoon-Mac on 09/11/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

public class JGTabBarContentsView: UIView {
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var contentScrollView: UIScrollView!
    @IBOutlet weak var contentStackView: UIStackView!
    @IBOutlet weak var headerWidthConstraint: NSLayoutConstraint!
    
    public var tabs: [JGTabBar]? {
        didSet {
            tabs?.forEach({ (tab) in
                addTab(tab: tab)
                addViewController(tab: tab)
            })
        }
    }
    
    // MARK: - private
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func awakeFromNib() {
        headerWidthConstraint.isActive = false
    }
    
    
    private func addTab(tab: JGTabBar) {
        if let tabButton = UINib(nibName: "JGTabButton", bundle: JGTabBarView.defaultBundel).instantiate(withOwner: self, options: nil).first as? JGTabButton {
            let lastButton = headerView.subviews.last
            
            headerView.addSubview(tabButton)
            tabButton.setTitle(tab.getTabTitle(), for: UIControl.State.normal)
            tabButton.addTarget(self, action: #selector(touchTab), for: UIControl.Event.touchUpInside)
            tabButton.translatesAutoresizingMaskIntoConstraints = false
            tabButton.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
            tabButton.heightAnchor.constraint(greaterThanOrEqualToConstant: 32).isActive = true
            
            guard let tabObject = tab as? NSObject, let tabs = tabs else { return }
            if let first = tabs.first as? NSObject, first == tabObject { // 첫
                tabButton.isSelected = true
                tabButton.leftAnchor.constraint(equalTo: headerView.leftAnchor).isActive = true
            } else if let last = tabs.last as? NSObject, last == tabObject, let lastButton = lastButton { // 마지막
                tabButton.leadingAnchor.constraint(equalTo: lastButton.trailingAnchor, constant: 0).isActive = true
                tabButton.rightAnchor.constraint(equalTo: headerView.rightAnchor).isActive = true
            } else if let lastButton = lastButton { // 중간
                tabButton.leadingAnchor.constraint(equalTo: lastButton.trailingAnchor).isActive = true
            }
        }
    }
    
    private func addViewController(tab: JGTabBar) {
        
    }
    
    // MARK: - Touch Event
    @objc func touchTab(sender: UIButton) {
        
    }
    
}
