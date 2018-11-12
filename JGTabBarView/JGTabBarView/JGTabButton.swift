//
//  JGTabButton.swift
//  JGTabBarView
//
//  Created by JungMoon-Mac on 09/11/2018.
//  Copyright © 2018 JungMoon. All rights reserved.
//

import UIKit

class JGTabButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupDesign()
    }
    
    private func setupDesign() {
        var image = #imageLiteral(resourceName: "btnTabRound")
        image = image.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))
        setBackgroundImage(image, for: UIControl.State.selected)
        setBackgroundImage(image, for: UIControl.State.highlighted)
    }
}
