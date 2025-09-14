//
//  StatisticsView.swift
//  DailyDiet
//
//  Created by pablo henrique on 13/09/25.
//

import Foundation
import UIKit

class StatisticsView: UIView {
    
    let percentageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Bold", size: 32)
        label.textColor = Colors.gray_100
        label.text = "90,86%"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = Colors.gray_200
        label.font = UIFont(name: "Nunito-Regular", size: 14)
        label.text = "statistics.label.description".localized
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let arrowUpRight: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "arrow.up.right"))
        image.tintColor = Colors.green_dark
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.backgroundColor = Colors.green_light
        addSubview(percentageLabel)
        addSubview(descriptionLabel)
        addSubview(arrowUpRight)
        setupConstraintst()
    }
    
    private func setupConstraintst() {
        NSLayoutConstraint.activate([
            percentageLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            percentageLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: percentageLabel.bottomAnchor),
            
            arrowUpRight.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            arrowUpRight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            arrowUpRight.widthAnchor.constraint(equalToConstant: 24),
            arrowUpRight.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
}
