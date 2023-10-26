//
//  ViewController.swift
//  I'm Poor
//
//  Created by macbook on 23.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let myView = setupPoor(labelFtext: "Don't ask me for money", labelTText: "I am Poor", imageName: "stone")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "green")!)
        setupUI()
        setupConstraints()

    }
    
    private func setupUI() {
        view.addSubViews(myView)
    }
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            myView.topAnchor.constraint(equalTo: view.topAnchor),
            myView.bottomAnchor.constraint (equalTo: view.bottomAnchor),
            myView.leadingAnchor.constraint (equalTo: view.leadingAnchor),
            myView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }


}


//MARK: - SwiftUI
import SwiftUI
struct Provider_ViewController : PreviewProvider {
    static var previews: some View {
        ContainterView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainterView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> UIViewController {
            return ViewController()
        }
        
        typealias UIViewControllerType = UIViewController
        
        
        let viewController = ViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<Provider_ViewController.ContainterView>) -> ViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: Provider_ViewController.ContainterView.UIViewControllerType, context: UIViewControllerRepresentableContext<Provider_ViewController.ContainterView>) {
            
        }
    }
    
}

