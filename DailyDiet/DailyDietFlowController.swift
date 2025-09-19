//
//  DailyDietFlowController.swift
//  DailyDiet
//
//  Created by pablo henrique on 19/09/25.
//

import Foundation
import UIKit

class DailyDietFlowController {
    
    // MARK: - Properties
    private var navigationController: UINavigationController?
    private let viewControllerFactory: ViewControllersFactoryProtocol
    
    
    // MARK: - Init
    public init() {
        self.viewControllerFactory = ViewControllersFactory()
    }
    
    // MARK: - StartFlow
    func start() -> UINavigationController? {
        let startViewController =  viewControllerFactory.makeHomeViewController(flowDelegate: self)
        self.navigationController = UINavigationController(rootViewController: startViewController)
        return navigationController
    }
}


extension DailyDietFlowController: HomeFlowDelegate {
    
}
