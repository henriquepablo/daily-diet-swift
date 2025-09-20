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
    let flowDelgate: GeneralStatisticsFlowDelegate
    
    
    init(contentView: GeneralStatisticsView, flowDelegate: GeneralStatisticsFlowDelegate) {
        self.contentView = contentView
        self.flowDelgate = flowDelegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        contentView.backButton.addTarget(self, action: #selector(didTappedBack), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
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
    
    @objc
    private func didTappedBack() {
        flowDelgate.backToHome()
    }
}
