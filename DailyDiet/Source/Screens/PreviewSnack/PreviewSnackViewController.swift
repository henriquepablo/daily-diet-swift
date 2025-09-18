//
//  PreviewSnackViewController.swift
//  DailyDiet
//
//  Created by pablo henrique on 18/09/25.
//

import Foundation
import UIKit

class PreviewSnackViewController: UIViewController {
    
    let contentView = PreviewSnackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.view.backgroundColor = Colors.white
        self.view.addSubview(contentView)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: self.view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
    
}
