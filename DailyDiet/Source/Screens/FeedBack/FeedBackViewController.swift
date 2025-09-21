//
//  FeedBackViewController.swift
//  DailyDiet
//
//  Created by pablo henrique on 14/09/25.
//

import Foundation
import UIKit

class FeedBackViewController: UIViewController {
    
    
    let contentView: FeedBackView
    let flowDelegate: FeedBackFlowDelegate
    
    init(contentView: FeedBackView, flowDelegate: FeedBackFlowDelegate) {
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    private func setup() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.view.backgroundColor = Colors.gray_700
        self.view.addSubview(contentView)
        
        setupConstraints()
        contentView.buttonHomePage.addTarget(self, action: #selector(didTappedBack), for: .touchUpInside)
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
        flowDelegate.backToHome()
    }
}
