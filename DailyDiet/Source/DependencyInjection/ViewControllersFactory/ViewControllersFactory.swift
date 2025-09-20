//
//  ViewControllersFactory.swift
//  DailyDiet
//
//  Created by pablo henrique on 19/09/25.
//

import Foundation

class ViewControllersFactory: ViewControllersFactoryProtocol {
    
    func makeHomeViewController(flowDelegate: HomeFlowDelegate) -> HomeViewController {
        let viewController = HomeViewController(contentView: HomeView(), flowDelegate: flowDelegate)
        return viewController
    }
    
    func makeNewSnackViewController(flowDelegate: NewSnackFlowDelegate) -> NewSnackViewController {
        let viewController = NewSnackViewController(contentView: NewSnackView(), flowDelegate: flowDelegate)
        return viewController
    }
    
    func makeGeneralStatisticsViewController(flowDelegate: GeneralStatisticsFlowDelegate) -> GeneralStatisticsViewController {
        let viewController = GeneralStatisticsViewController(contentView: GeneralStatisticsView(), flowDelegate: flowDelegate)
        return viewController
    }
}
