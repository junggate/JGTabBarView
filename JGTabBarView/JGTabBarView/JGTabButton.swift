//
//  JGTabButton.swift
//  JGTabBarView
//
//  Created by JungMoon-Mac on 09/11/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

public class JGTabButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupDesign()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupDesign()
    }
    
    public func setupDesign() {
        var image = UIImage(named: "btnTabRound", in: JGTabBarView.defaultBundel, compatibleWith: nil)!
        image = image.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))
        setBackgroundImage(image, for: UIControl.State.selected)
        setBackgroundImage(image, for: UIControl.State.highlighted)
    }
}
