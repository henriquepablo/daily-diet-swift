//
//  HomeView.swift
//  DailyDiet
//
//  Created by pablo henrique on 13/09/25.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    let logoImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Logo"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let profileImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Profile"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let statisticsView: StatisticsView = {
        let view = StatisticsView()
        view.layer.cornerRadius = 8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(logoImage)
        addSubview(profileImage)
        addSubview(statisticsView)
        setupConstraintst()
    }
    
    private func setupConstraintst() {
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: -20),
            logoImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            profileImage.centerYAnchor.constraint(equalTo: logoImage.centerYAnchor, constant: -24),
            profileImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            statisticsView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 30),
            statisticsView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            statisticsView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            statisticsView.heightAnchor.constraint(equalToConstant: 102),
        ])
    }
}
