//
//  roundButton.swift
//  RoundButtonCalc
//
//  Created by Priyansh Bendre on 5/24/20.
//  Copyright © 2020 Priyansh Bendre. All rights reserved.
//

import UIKit

@IBDesignable
class roundButton: UIButton {
    @IBInspectable var roundButton:Bool = false {
        didSet{
            if roundButton {
                layer.cornerRadius = frame.height/2
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundButton{
            layer.cornerRadius = frame.height/2
        }
    }
    
}
