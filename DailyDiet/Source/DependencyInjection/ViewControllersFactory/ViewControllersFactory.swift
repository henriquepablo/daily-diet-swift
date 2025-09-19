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
    
}
