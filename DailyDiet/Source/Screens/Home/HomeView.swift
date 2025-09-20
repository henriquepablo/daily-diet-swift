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
    
    let textSnack: UILabel = {
        let label = UILabel()
        label.text = "Refeições"
        label.textColor = Colors.gray_100
        label.font = UIFont(name: "Nunito-Regular", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let newSnackButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = Colors.gray_200
        button.layer.cornerRadius = 6
        button.setTitle("+ Nova Refeição", for: .normal)
        button.setTitleColor(Colors.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Nunito-Bold", size: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
        addSubview(textSnack)
        addSubview(newSnackButton)
        setupConstraintst()
    }
    
    private func setupConstraintst() {
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            logoImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            profileImage.centerYAnchor.constraint(equalTo: logoImage.centerYAnchor),
            profileImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            statisticsView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 30),
            statisticsView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            statisticsView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            statisticsView.heightAnchor.constraint(equalToConstant: 102),
            
            textSnack.topAnchor.constraint(equalTo: statisticsView.bottomAnchor, constant: 40),
            textSnack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            newSnackButton.topAnchor.constraint(equalTo: textSnack.bottomAnchor, constant: 5),
            newSnackButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            newSnackButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            newSnackButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
