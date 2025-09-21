//
//  CellSnackView.swift
//  DailyDiet
//
//  Created by pablo henrique on 21/09/25.
//

import Foundation
import UIKit

class SnackCell: UITableViewCell {
    
    static let identifier = "SnackCell"
    
    let hourLabel: UILabel = {
        let label = UILabel()
        label.textColor = Colors.gray_100
        label.font = UIFont(name: "Nunito-Bold", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let containerPipe: UIView = {
       let view = UIView()
        view.backgroundColor = Colors.gray_400
        view.layer.borderWidth = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = Colors.gray_200
        label.font = UIFont(name: "Nunito-Regular", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let containerStatus: UIView = {
       let view = UIView()
        view.layer.cornerRadius = 7
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        contentView.backgroundColor = Colors.gray_700
        contentView.layer.borderColor = Colors.gray_500.cgColor
        contentView.layer.borderWidth = 1
        contentView.layer.cornerRadius = 6
        
        contentView.addSubview(hourLabel)
        contentView.addSubview(containerPipe)
        contentView.addSubview(nameLabel)
        contentView.addSubview(containerStatus)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            hourLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            hourLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            containerPipe.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerPipe.leadingAnchor.constraint(equalTo: hourLabel.trailingAnchor, constant: 10),
            containerPipe.widthAnchor.constraint(equalToConstant: 1),
            containerPipe.heightAnchor.constraint(equalToConstant: 16),
            
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: containerPipe.trailingAnchor, constant: 10),
            
            containerStatus.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerStatus.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            containerStatus.widthAnchor.constraint(equalToConstant: 14),
            containerStatus.heightAnchor.constraint(equalToConstant: 14)
        ])
    }
    
    func configure(hour: String, name: String, hasDiet: Bool) {
        hourLabel.text = hour
        nameLabel.text = name
        containerStatus.backgroundColor = hasDiet ? Colors.green_mid : Colors.red_mid
    }
}
