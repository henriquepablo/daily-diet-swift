//
//  NewSnackView.swift
//  DailyDiet
//
//  Created by pablo henrique on 14/09/25.
//

import Foundation
import UIKit

class NewSnackView: UIView {
    
    let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.gray_500
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
        label.text = "snack.label.titleScreen".localized
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
        label.text = "snack.label.name".localized
        label.textColor = Colors.gray_200
        label.font = UIFont(name: "Nunito-Bold", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let inputName: UITextField = {
        let input = UITextField()
        input.layer.borderColor = Colors.gray_500.cgColor
        input.layer.borderWidth = 0.8
        input.layer.cornerRadius = 6
        input.translatesAutoresizingMaskIntoConstraints = false
        return input
    }()
    
    let labelDescription: UILabel = {
        let label = UILabel()
        label.text = "snack.label.description".localized
        label.textColor = Colors.gray_200
        label.font = UIFont(name: "Nunito-Bold", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let inputDescription: UITextField = {
        let input = UITextField()
        input.layer.borderColor = Colors.gray_500.cgColor
        input.layer.borderWidth = 0.8
        input.layer.cornerRadius = 6
        input.translatesAutoresizingMaskIntoConstraints = false
        return input
    }()
    
    let labelData: UILabel = {
        let label = UILabel()
        label.text = "snack.label.data".localized
        label.textColor = Colors.gray_200
        label.font = UIFont(name: "Nunito-Bold", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let inputData: UITextField = {
        let input = UITextField()
        input.layer.borderColor = Colors.gray_500.cgColor
        input.layer.borderWidth = 0.8
        input.layer.cornerRadius = 6
        input.translatesAutoresizingMaskIntoConstraints = false
        return input
    }()

    let labelHour: UILabel = {
        let label = UILabel()
        label.text = "snack.label.hour".localized
        label.textColor = Colors.gray_200
        label.font = UIFont(name: "Nunito-Bold", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let inputHour: UITextField = {
        let input = UITextField()
        input.layer.borderColor = Colors.gray_500.cgColor
        input.layer.borderWidth = 0.8
        input.layer.cornerRadius = 6
        input.translatesAutoresizingMaskIntoConstraints = false
        return input
    }()
    
    let labelHasDiet: UILabel = {
        let label = UILabel()
        label.text = "snack.label.hasDiet".localized
        label.textColor = Colors.gray_200
        label.font = UIFont(name: "Nunito-Bold", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let buttonYes: UIButton = {
        let button = UIButton()
        button.backgroundColor = Colors.gray_600
        button.layer.cornerRadius = 6
        button.setTitle("Sim", for: .normal)
        button.setTitleColor(Colors.gray_100, for: .normal)
        button.titleLabel?.font = UIFont(name: "Nunito-Bold", size: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buttonNo: UIButton = {
        let button = UIButton()
        button.backgroundColor = Colors.gray_600
        button.layer.cornerRadius = 6
        button.setTitle("Não", for: .normal)
        button.setTitleColor(Colors.gray_100, for: .normal)
        button.titleLabel?.font = UIFont(name: "Nunito-Bold", size: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let buttonAddNewSnack: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("snack.button.addNewSnack".localized, for: .normal)
        button.setTitleColor(Colors.white, for: .normal)
        button.backgroundColor = Colors.gray_200
        button.titleLabel?.font = UIFont(name: "Nunito-Bold", size: 16)
        button.layer.cornerRadius = 6
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
        contentView.addSubview(inputName)
        contentView.addSubview(labelDescription)
        contentView.addSubview(inputDescription)
        contentView.addSubview(labelData)
        contentView.addSubview(inputData)
        contentView.addSubview(labelHour)
        contentView.addSubview(inputHour)
        contentView.addSubview(labelHasDiet)
        contentView.addSubview(buttonYes)
        contentView.addSubview(buttonNo)
        contentView.addSubview(buttonAddNewSnack)
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
            
            labelName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            labelName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            
            inputName.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 5),
            inputName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            inputName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            inputName.heightAnchor.constraint(equalToConstant: 48),
            
            labelDescription.topAnchor.constraint(equalTo: inputName.bottomAnchor, constant: 20),
            labelDescription.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            
            inputDescription.topAnchor.constraint(equalTo: labelDescription.bottomAnchor, constant: 5),
            inputDescription.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            inputDescription.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            inputDescription.heightAnchor.constraint(equalToConstant: 142),
            
            labelData.topAnchor.constraint(equalTo: inputDescription.bottomAnchor, constant: 20),
            labelData.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            
            inputData.topAnchor.constraint(equalTo: labelData.bottomAnchor, constant: 5),
            inputData.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            inputData.heightAnchor.constraint(equalToConstant: 48),
            inputData.widthAnchor.constraint(equalToConstant: 153),
            
            labelHour.topAnchor.constraint(equalTo: inputDescription.bottomAnchor, constant: 20),
            labelHour.leadingAnchor.constraint(equalTo: inputHour.leadingAnchor),
            
            inputHour.topAnchor.constraint(equalTo: labelHour.bottomAnchor, constant: 5),
            inputHour.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            inputHour.heightAnchor.constraint(equalToConstant: 48),
            inputHour.widthAnchor.constraint(equalToConstant: 153),
            
            labelHasDiet.topAnchor.constraint(equalTo: inputHour.bottomAnchor, constant: 20),
            labelHasDiet.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),

            buttonYes.topAnchor.constraint(equalTo: labelHasDiet.bottomAnchor, constant: 5),
            buttonYes.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            buttonYes.widthAnchor.constraint(equalToConstant: 159),
            buttonYes.heightAnchor.constraint(equalToConstant: 50),
            
            buttonNo.topAnchor.constraint(equalTo: labelHasDiet.bottomAnchor, constant: 5),
            buttonNo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            buttonNo.widthAnchor.constraint(equalToConstant: 159),
            buttonNo.heightAnchor.constraint(equalToConstant: 50),
            
            buttonAddNewSnack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            buttonAddNewSnack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            buttonAddNewSnack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            buttonAddNewSnack.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configureButtonOptionYes(option: Bool) {
        cleanButtonSelected(button: buttonNo)
        animateButtonSelected(button: buttonYes, option: option)
    }
    
    func configureButtonOptionNo(option: Bool) {
        cleanButtonSelected(button: buttonYes)
        animateButtonSelected(button: buttonNo, option: option)
    }
    
    private func animateButtonSelected(button: UIButton, option: Bool) {
        
        UIView.animate(withDuration: 0.3,
                       delay: 0.0,
                       animations: {
            button.backgroundColor = option ? Colors.green_light : Colors.red_light
            button.layer.borderColor = option ? Colors.green_dark.cgColor : Colors.red_dark.cgColor
            button.layer.borderWidth = 1

        })
    }
    
    private func cleanButtonSelected(button: UIButton) {
        button.backgroundColor = Colors.gray_600
        button.layer.borderColor = Colors.gray_600.cgColor
        button.layer.borderWidth = 0
    }
}
