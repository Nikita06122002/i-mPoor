//
//  UIImageView-ext.swift
//  I'm Poor
//
//  Created by macbook on 23.10.2023.
//

import Foundation
import UIKit

extension UIImageView {
    
    convenience init(imageName: String) {
        self.init()
        self.image = UIImage(named: imageName)
    }
}
