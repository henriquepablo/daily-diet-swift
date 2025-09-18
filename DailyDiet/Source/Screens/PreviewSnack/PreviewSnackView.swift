//
//  PreviewSnackView.swift
//  DailyDiet
//
//  Created by pablo henrique on 18/09/25.
//

import Foundation
import UIKit

class PreviewSnackView: UIView {
    
    let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.green_light
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "arrow.left"), for: .normal)
        button.tintColor = Colors.gray_200
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let titleScreenName: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Nunito-Bold", size: 20)
        label.textColor = Colors.gray_100
        label.text = "preview.label.titleScreen".localized
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
    
    let labelName: UILabel = {
        let label = UILabel()
        label.text = "Sanduíche"
        label.font = UIFont(name: "Nunito-Bold", size: 20)
        label.textColor = Colors.gray_100
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labelDescription: UILabel = {
        let label = UILabel()
        label.text = "Sanduíche de pão integral com atum e salada de alface e tomate"
        label.font = UIFont(name: "Nunito-Regular", size: 16)
        label.textColor = Colors.gray_200
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labelDataAndHour: UILabel = {
        let label = UILabel()
        label.text = "Data e hora"
        label.font = UIFont(name: "Nunito-Bold", size: 20)
        label.textColor = Colors.gray_200
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labelDataAndHourValue: UILabel = {
        let label = UILabel()
        label.text = "12/08/2022 às 16:00"
        label.font = UIFont(name: "Nunito-Regular", size: 16)
        label.textColor = Colors.gray_200
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let containerStatus: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.gray_600
        view.layer.cornerRadius = 17
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let status: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.green_dark
        view.layer.cornerRadius = 4
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let labeltatus: UILabel = {
        let label = UILabel()
        label.textColor = Colors.gray_100
        label.text = "Dentro da dieta"
        label.font = UIFont(name: "Nunito-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let editButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = Colors.gray_200
        button.layer.cornerRadius = 6
        button.setTitle("preview.button.edit".localized, for: .normal)
        button.tintColor = Colors.white
        button.setTitleColor(Colors.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Nunito-Bold", size: 16)
        button.setImage(UIImage(named: "EditIcon"), for: UIControl.State.normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let deleteButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = Colors.white
        button.layer.cornerRadius = 6
        button.layer.borderWidth = 1
        button.layer.borderColor = Colors.gray_100.cgColor
        button.setTitle("preview.button.delete".localized, for: .normal)
        button.tintColor = Colors.gray_100
        button.setTitleColor(Colors.gray_100, for: .normal)
        button.titleLabel?.font = UIFont(name: "Nunito-Bold", size: 16)
        button.setImage(UIImage(named: "TrashIcon"), for: UIControl.State.normal)
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
        addSubview(headerView)
        headerView.addSubview(backButton)
        headerView.addSubview(titleScreenName)
        addSubview(contentView)
        contentView.addSubview(labelName)
        contentView.addSubview(labelDescription)
        contentView.addSubview(labelDataAndHour)
        contentView.addSubview(labelDataAndHourValue)
        contentView.addSubview(containerStatus)
        containerStatus.addSubview(status)
        containerStatus.addSubview(labeltatus)
        contentView.addSubview(editButton)
        contentView.addSubview(deleteButton)
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
            
            titleScreenName.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            titleScreenName.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
            
            contentView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -15),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            labelName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            labelName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            
            labelDescription.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 5),
            labelDescription.leadingAnchor.constraint(equalTo: labelName.leadingAnchor),
            labelDescription.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            
            labelDataAndHour.topAnchor.constraint(equalTo: labelDescription.bottomAnchor, constant: 30),
            labelDataAndHour.leadingAnchor.constraint(equalTo: labelDescription.leadingAnchor),
            
            labelDataAndHourValue.topAnchor.constraint(equalTo: labelDataAndHour.bottomAnchor, constant: 5),
            labelDataAndHourValue.leadingAnchor.constraint(equalTo: labelDataAndHour.leadingAnchor),
            
            containerStatus.topAnchor.constraint(equalTo: labelDataAndHourValue.bottomAnchor, constant: 20),
            containerStatus.leadingAnchor.constraint(equalTo: labelDataAndHourValue.leadingAnchor),
            containerStatus.widthAnchor.constraint(equalToConstant: 142),
            containerStatus.heightAnchor.constraint(equalToConstant: 34),
            
            status.centerYAnchor.constraint(equalTo: containerStatus.centerYAnchor),
            status.leadingAnchor.constraint(equalTo: containerStatus.leadingAnchor, constant: 10),
            status.widthAnchor.constraint(equalToConstant: 8),
            status.heightAnchor.constraint(equalToConstant: 8),
            
            labeltatus.centerXAnchor.constraint(equalTo: containerStatus.centerXAnchor),
            labeltatus.centerYAnchor.constraint(equalTo: containerStatus.centerYAnchor),
            
            editButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            editButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            editButton.heightAnchor.constraint(equalToConstant: 50),
            editButton.bottomAnchor.constraint(equalTo: deleteButton.topAnchor, constant: -10),
            
            deleteButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            deleteButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            deleteButton.heightAnchor.constraint(equalToConstant: 50),
            deleteButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -40)
        ])
    }
}
