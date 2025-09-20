//
//  GeneralStatisticsViewController.swift
//  DailyDiet
//
//  Created by pablo henrique on 20/09/25.
//

import Foundation
import UIKit

class GeneralStatisticsViewController: UIViewController {
    
    let contentView: GeneralStatisticsView
    //let flowDelgate: GeneralStatisticsFlowDelegate
    
    
    init(contentView: GeneralStatisticsView) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.view.backgroundColor = Colors.white
        contentView.translatesAutoresizingMaskIntoConstraints = false
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
