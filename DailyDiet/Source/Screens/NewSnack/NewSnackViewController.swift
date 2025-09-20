//
//  NewSnackViewController.swift
//  DailyDiet
//
//  Created by pablo henrique on 14/09/25.
//

import Foundation
import UIKit

class NewSnackViewController: UIViewController {
    
    let contentView: NewSnackView
    let flowDelegate: NewSnackFlowDelegate
    var option = false

    init(contentView: NewSnackView, flowDelegate: NewSnackFlowDelegate) {
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
        self.view.backgroundColor = Colors.white
        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(contentView)
        setupConstraintst()
        contentView.buttonYes.addTarget(self, action: #selector(selectOptionYes), for: .touchUpInside)
        contentView.buttonNo.addTarget(self, action: #selector(selectOptionNo), for: .touchUpInside)
        contentView.backButton.addTarget(self, action: #selector(didTappedBack), for: .touchUpInside)
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
    private func selectOptionYes() {
        self.option = true
        contentView.configureButtonOptionYes(option: self.option)
    }
    
    @objc
    private func selectOptionNo() {
        self.option = false
        contentView.configureButtonOptionNo(option: self.option)
    }
    
    @objc
    private func didTappedBack() {
        self.flowDelegate.backToHome()
    }
}
