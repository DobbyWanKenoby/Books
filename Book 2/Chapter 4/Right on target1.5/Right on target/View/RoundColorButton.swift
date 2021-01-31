//
//  RoundColorButton.swift
//  Right on target
//
//  Created by Admin on 06.11.2020.
//

import UIKit

class RoundColorButton: UIButton {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = layer.frame.height
    }
    
}
