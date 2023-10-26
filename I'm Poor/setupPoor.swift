//
//  setupPoor.swift
//  I'm Poor
//
//  Created by macbook on 23.10.2023.
//

import Foundation
import UIKit

final class setupPoor: UIView {
    
    
    
    init(labelFtext: String, labelTText: String, imageName: String) {
        super.init(frame: .infinite)
        setupUI(labelFtext: labelFtext, labelTText: labelTText, imageName: imageName)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI(labelFtext: String, labelTText: String, imageName: String) {
        let label = UILabel(text: labelFtext, font: .systemFont(ofSize: 30), aligment: .center)
        let labelTwo = UILabel(text: labelTText, font: .systemFont(ofSize: 25), aligment: .center)
        let imageView = UIImageView(imageName: imageName)
        self.addSubViews(label, labelTwo, imageView)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            label.leadingAnchor.constraint(greaterThanOrEqualTo: self.leadingAnchor, constant: 5),
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            labelTwo.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            labelTwo.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 250),
            imageView.heightAnchor.constraint(equalToConstant: 250),
            imageView.topAnchor.constraint(equalTo: labelTwo.bottomAnchor, constant: 100)
        ])
    }
    
    
}
