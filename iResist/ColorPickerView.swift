//
//  ColorPickerView.swift
//  iResist
//
//  Created by Jacob Farkas on 9/29/18.
//  Copyright © 2018 Farktronix. All rights reserved.
//

import UIKit

class ColorPickerView : UIView {
    public var color : Resistor.Color = .None {
        didSet {
            backgroundColor = color.asUIColor()
        }
    }
    
    public init(withColor color: Resistor.Color, frame: CGRect) {
        self.color = color
        super.init(frame: frame)
        backgroundColor = color.asUIColor()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }
}
