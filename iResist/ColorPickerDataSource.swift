//
//  ColorPickerDataSource.swift
//  iResist
//
//  Created by Jacob Farkas on 9/29/18.
//  Copyright © 2018 Farktronix. All rights reserved.
//

import UIKit

class ColorPickerDataSource : NSObject {

}

extension ColorPickerDataSource : UIPickerViewDataSource {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int { return 4 }
    // TODO: The tolerance band has different possible values. Pink, Silver, and Gold should be excluded from
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int { return Resistor.Color.count.rawValue }
}

extension ColorPickerDataSource : UIPickerViewDelegate {
    //public func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat
    
    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat { return 50.0 }
    
    public func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        guard row >= 0, row < Resistor.Color.count.rawValue else { fatalError("Invalid row (\(row)) for component \(component)") }
        
        return ColorPickerView(withColor: Resistor.Color(rawValue: row)!, frame: CGRect(x: 0, y: 0, width: 50.0, height: 50.0))
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
}
