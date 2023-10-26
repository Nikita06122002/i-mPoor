//
//  UILabel-ext.swift
//  I'm Poor
//
//  Created by macbook on 23.10.2023.
//

import Foundation
import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont, aligment: NSTextAlignment) {
        self.init()
        self.text = text
        self.font = font
        self.textAlignment = aligment
        self.numberOfLines = 0
    }
}
