//
//  FeedBackView.swift
//  DailyDiet
//
//  Created by pablo henrique on 14/09/25.
//

import Foundation
import UIKit

class FeedBackView: UIView {
    
    var feedback: Bool
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Bold", size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Regular", size: 16)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = Colors.gray_100
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let buttonHomePage: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("feedback.button.homePage".localized, for: .normal)
        button.backgroundColor = Colors.gray_200
        button.titleLabel?.font = UIFont(name: "Nunito-Bold", size: 14)
        button.setTitleColor(Colors.white, for: .normal)
        button.layer.cornerRadius = 6
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    init(feedback: Bool) {
        self.feedback = feedback
        super.init(frame: .zero)
        setup()
        setupImage()
        setupTitle()
        setupDescription()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(imageView)
        addSubview(buttonHomePage)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: 0),
            
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: -20),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            buttonHomePage.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonHomePage.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            buttonHomePage.widthAnchor.constraint(equalToConstant: 191),
            buttonHomePage.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setupImage() {
        imageView.image = self.feedback ? UIImage(named: "FeedBackGood") : UIImage(named: "FeedBackBad")
    }
    
    private func setupTitle() {
        titleLabel.text = feedback ? "Continue Assim!" : "Que Pena!"
        titleLabel.textColor = feedback ? Colors.green_dark : Colors.red_dark
    }
    
    private func setupDescription() {
        descriptionLabel.text = feedback ? "Você continua dentro da dieta. Muito Bem!"
        : "Você saiu da dieta dessa vez, mas continue se esforçando e não desista!"
    }
}

