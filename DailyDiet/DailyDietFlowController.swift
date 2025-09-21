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
    
    func navigatetToNewSnack() {
        
        let viewController = viewControllerFactory.makeNewSnackViewController(flowDelegate: self)
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func navigateToGeneralStatistics() {
        let viewController = viewControllerFactory.makeGeneralStatisticsViewController(flowDelegate: self)
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}


extension DailyDietFlowController: NewSnackFlowDelegate {
    
    func backToHome() {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    
}

extension DailyDietFlowController: GeneralStatisticsFlowDelegate {
    
    
}

extension DailyDietFlowController: FeedBackFlowDelegate {

    
    func displayFeedBackView(feedback: Bool) {
        let viewController = viewControllerFactory.makeFeedBackViewController(flowDelegate: self, feedback: feedback)
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
