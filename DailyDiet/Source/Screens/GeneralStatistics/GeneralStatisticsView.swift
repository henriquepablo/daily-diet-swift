//
//  GeneralStatisticsViewUntitled.swift
//  DailyDiet
//
//  Created by pablo henrique on 20/09/25.
//

import Foundation
import UIKit

class GeneralStatisticsView: UIView {
    
    
    let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.green_light
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "arrow.left"), for: .normal)
        button.tintColor = Colors.green_dark
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let percentageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Bold", size: 32)
        label.textColor = Colors.gray_100
        label.text = "90,86%"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let decriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Regular", size: 14)
        label.textColor = Colors.gray_200
        label.text = "das refeições dentro da dieta"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.backgroundColor = Colors.gray_700
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let title: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Bold", size: 16)
        label.textColor = Colors.gray_200
        label.text = "Estatísticas gerais"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let containerGray1: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.gray_600
        view.layer.cornerRadius = 8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let seguenceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Bold", size: 24)
        label.textColor = Colors.gray_200
        label.text = "22"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sequenceDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Regular", size: 14)
        label.text = "melhor sequência de pratos dentro da dieta"
        label.textColor = Colors.gray_200
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let containerGray2: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.gray_600
        view.layer.cornerRadius = 8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let totalSnack: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Bold", size: 24)
        label.textColor = Colors.gray_200
        label.text = "109"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let totalSnackLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Regular", size: 14)
        label.text = "refeições registradas"
        label.textColor = Colors.gray_200
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let containerSnackGood: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.green_light
        view.layer.cornerRadius = 8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let totalSnackGood: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Bold", size: 24)
        label.textColor = Colors.gray_200
        label.text = "99"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let totalSnackGoodLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Regular", size: 14)
        label.text = "refeições dentro da dieta"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = Colors.gray_200
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let containerSnackBad: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.red_light
        view.layer.cornerRadius = 8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let totalSnackBad: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Bold", size: 24)
        label.textColor = Colors.gray_200
        label.text = "10"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let totalSnackBadLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Regular", size: 14)
        label.text = "refeições fora da dieta"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = Colors.gray_200
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(headerView)
        headerView.addSubview(backButton)
        headerView.addSubview(percentageLabel)
        headerView.addSubview(decriptionLabel)
        addSubview(contentView)
        contentView.addSubview(title)
        contentView.addSubview(containerGray1)
        containerGray1.addSubview(seguenceLabel)
        containerGray1.addSubview(sequenceDescriptionLabel)
        contentView.addSubview(containerGray2)
        containerGray2.addSubview(totalSnack)
        containerGray2.addSubview(totalSnackLabel)
        contentView.addSubview(containerSnackGood)
        containerSnackGood.addSubview(totalSnackGood)
        containerSnackGood.addSubview(totalSnackGoodLabel)
        contentView.addSubview(containerSnackBad)
        containerSnackBad.addSubview(totalSnackBad)
        containerSnackBad.addSubview(totalSnackBadLabel)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: topAnchor),
            headerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 160),
            
            backButton.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
            backButton.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 24),
            
            percentageLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            percentageLabel.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
            
            decriptionLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            decriptionLabel.topAnchor.constraint(equalTo: percentageLabel.bottomAnchor, constant: 5),
            
            contentView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            title.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            containerGray1.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 20),
            containerGray1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            containerGray1.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            containerGray1.heightAnchor.constraint(equalToConstant: 89),
            
            containerGray2.topAnchor.constraint(equalTo: containerGray1.bottomAnchor, constant: 20),
            containerGray2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            containerGray2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            containerGray2.heightAnchor.constraint(equalToConstant: 89),

            seguenceLabel.centerXAnchor.constraint(equalTo: containerGray1.centerXAnchor),
            seguenceLabel.topAnchor.constraint(equalTo: containerGray1.topAnchor, constant: 10),
            
            sequenceDescriptionLabel.topAnchor.constraint(equalTo: seguenceLabel.bottomAnchor, constant: 10),
            sequenceDescriptionLabel.centerXAnchor.constraint(equalTo: containerGray1.centerXAnchor),
            
            totalSnack.centerXAnchor.constraint(equalTo: containerGray2.centerXAnchor),
            totalSnack.topAnchor.constraint(equalTo: containerGray2.topAnchor, constant: 10),
            
            totalSnackLabel.topAnchor.constraint(equalTo: totalSnack.bottomAnchor, constant: 10),
            totalSnackLabel.centerXAnchor.constraint(equalTo: containerGray2.centerXAnchor),
            
            containerSnackGood.topAnchor.constraint(equalTo: containerGray2.bottomAnchor, constant: 20),
            containerSnackGood.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            containerSnackGood.heightAnchor.constraint(equalToConstant: 107),
            containerSnackGood.widthAnchor.constraint(equalToConstant: 157),
            
            totalSnackGood.centerXAnchor.constraint(equalTo: containerSnackGood.centerXAnchor),
            totalSnackGood.topAnchor.constraint(equalTo: containerSnackGood.topAnchor, constant: 10),
            
            totalSnackGoodLabel.centerXAnchor.constraint(equalTo: containerSnackGood.centerXAnchor),
            totalSnackGoodLabel.topAnchor.constraint(equalTo: totalSnackGood.bottomAnchor, constant: 5),
            totalSnackGoodLabel.leadingAnchor.constraint(equalTo: containerSnackGood.leadingAnchor, constant: 10),
            totalSnackGoodLabel.trailingAnchor.constraint(equalTo: containerSnackGood.trailingAnchor, constant: -10),
            
            containerSnackBad.topAnchor.constraint(equalTo: containerGray2.bottomAnchor, constant: 20),
            containerSnackBad.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            containerSnackBad.heightAnchor.constraint(equalToConstant: 107),
            containerSnackBad.widthAnchor.constraint(equalToConstant: 157),
            
            totalSnackBad.centerXAnchor.constraint(equalTo: containerSnackBad.centerXAnchor),
            totalSnackBad.topAnchor.constraint(equalTo: containerSnackBad.topAnchor, constant: 10),
            
            totalSnackBadLabel.centerXAnchor.constraint(equalTo: containerSnackBad.centerXAnchor),
            totalSnackBadLabel.topAnchor.constraint(equalTo: totalSnackBad.bottomAnchor, constant: 5),
            totalSnackBadLabel.leadingAnchor.constraint(equalTo: containerSnackBad.leadingAnchor, constant: 10),
            totalSnackBadLabel.trailingAnchor.constraint(equalTo: containerSnackBad.trailingAnchor, constant: -10),
        ])
    }
    
}
