//
//  HomeViewController.swift
//  DailyDiet
//
//  Created by pablo henrique on 13/09/25.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    let contentView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.view.backgroundColor = Colors.gray_700
        self.view.addSubview(contentView)
        
        setupConstraintst()
    }
    
    private func setupConstraintst() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: self.view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
}
