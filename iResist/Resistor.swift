//
//  Resistor.swift
//  iResist
//
//  Created by Jacob Farkas on 9/29/18.
//  Copyright © 2018 Farktronix. All rights reserved.
//

import Foundation
import UIKit

struct Resistor {
    enum Color : Int, RawRepresentable {
        case Black = 0
        case Brown
        case Red
        case Orange
        case Yellow
        case Green
        case Blue
        case Violet
        case Gray
        case White
        
        // Only for tolerances
        case Pink
        case Silver
        case Gold
        
        case None
        
        case count
    }
    
    public var A : Color = .None
    public var B : Color = .None
    public var C : Color = .None
    public var D : Color = .None
    
    public func ohms() -> Double {
        // TODO: Implement
        return 0.0
    }
}

extension Resistor.Color {
    public func asUIColor() -> UIColor {
        switch self {
        case .Black:
            return UIColor.black
        case .Brown:
            return UIColor.brown
        case .Red:
            return UIColor.red
        case .Orange:
            return UIColor.orange
        case .Yellow:
            return UIColor.yellow
        case .Green:
            return UIColor.green
        case .Blue:
            return UIColor.blue
        case .Violet:
            return UIColor(red: 0.5781, green: 0.0, blue: 0.8242, alpha: 1.0)
        case .Gray:
            return UIColor.gray
        case .White:
            return UIColor.white
        case .Pink:
            return UIColor(red: 1.0, green: 0.4101, blue: 0.7031, alpha: 1.0)
        case .Silver:
            return UIColor(red: 0.75, green: 0.75, blue: 0.75, alpha: 1.0)
        case .Gold:
            return UIColor(red: 0.8085, green: 0.7070, blue: 0.2304, alpha: 1.0)
        case .None:
            return UIColor.clear
            
        case .count:
            fatalError("Attempt to generate a UIColor for an invalid resistor color")
        }
    }
}
