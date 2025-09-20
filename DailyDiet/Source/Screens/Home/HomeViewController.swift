//
//  HomeViewController.swift
//  DailyDiet
//
//  Created by pablo henrique on 13/09/25.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    
    let contentView: HomeView
    let flowDelegate: HomeFlowDelegate
    
    init(contentView: HomeView, flowDelegate: HomeFlowDelegate) {
        self.contentView = contentView
        self.flowDelegate = flowDelegate
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
        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.view.backgroundColor = Colors.gray_700
        self.view.addSubview(contentView)
        setupConstraintst()
        self.contentView.newSnackButton.addTarget(self, action: #selector(didTappedNavigeteNewSnack), for: .touchUpInside)
        setupTapGestureOnStatistics()
    }
    
    private func setupConstraintst() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: self.view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
    
    @objc
    private func didTappedNavigeteNewSnack() {
        flowDelegate.navigatetToNewSnack()
    }
    
    private func setupTapGestureOnStatistics() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTappedStatistics))
        contentView.statisticsView.addGestureRecognizer(tapGesture)
    }
    
    @objc
    private func didTappedStatistics() {
        flowDelegate.navigateToGeneralStatistics()
        /*UIView.animate(withDuration: 0.3,
                       delay: 0.0,
                       animations: { [self] in
            contentView.statisticsView.alpha = 0.5
        })*/
    }
}
