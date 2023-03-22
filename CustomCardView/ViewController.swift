//
//  ViewController.swift
//  CustomCardView
//
//  Created by Иван Гришин on 21.03.2023.
//

import UIKit

class ViewController: UIViewController {

    let customCardView = CustomCardView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        customCardView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customCardView)
        
        NSLayoutConstraint.activate([
            customCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            customCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            customCardView.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            customCardView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }


}

