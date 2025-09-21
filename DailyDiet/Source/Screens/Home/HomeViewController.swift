//
//  HomeViewController.swift
//  DailyDiet
//
//  Created by pablo henrique on 13/09/25.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    
    let contentView: HomeView
    let flowDelegate: HomeFlowDelegate
    let viewModel = HomeViewModel()
    var snacksDataSource: [SnackModel] = []
    
    init(contentView: HomeView, flowDelegate: HomeFlowDelegate) {
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
        getSnacks()
    }
    
    private func setup() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.view.backgroundColor = Colors.gray_700
        self.view.addSubview(contentView)
        setupConstraintst()
        self.contentView.newSnackButton.addTarget(self, action: #selector(didTappedNavigeteNewSnack), for: .touchUpInside)
        setupTapGestureOnStatistics()
        setupTableView()
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
    private func didTappedNavigeteNewSnack() {
        flowDelegate.navigatetToNewSnack()
    }
    
    private func setupTapGestureOnStatistics() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTappedStatistics))
        contentView.statisticsView.addGestureRecognizer(tapGesture)
    }
    
    @objc
    private func didTappedStatistics() {
        flowDelegate.navigateToGeneralStatistics()
    }
    
    private func setupTableView() {
        contentView.tableView.dataSource = self
        contentView.tableView.delegate = self
        contentView.tableView.register(SnackCell.self, forCellReuseIdentifier: SnackCell.identifier)
        contentView.tableView.contentInset = UIEdgeInsets(top: 16, left: 0, bottom: 16, right: 0)
        
    }
    
    private func getSnacks() {
        viewModel.getSnacks() { result in
            switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        self.snacksDataSource.append(contentsOf: response)
                        self.contentView.tableView.reloadData()
                    }
                case .failure(let error):
                    print("❌ Erro:", error.localizedDescription)
            }
        }
    }
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 8
    }
    
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return snacksDataSource.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SnackCell.identifier, for: indexPath) as! SnackCell
        let snack = snacksDataSource[indexPath.row]
        cell.configure(hour: snack.hora, name: snack.name, hasDiet: snack.hasDiet)
        return cell
    }
    
    
}

struct DayModel: Decodable {
    var id: Int
    var date: String
}

struct SnackModel: Decodable {
    var id: Int
    var name: String
    var description: String
    var hora: String
    var hasDiet: Bool
    var day: DayModel
}
