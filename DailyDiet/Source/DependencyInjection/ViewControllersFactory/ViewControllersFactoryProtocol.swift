//
//  ViewControllersFactoryProtocol.swift
//  DailyDiet
//
//  Created by pablo henrique on 19/09/25.
//

import Foundation

protocol ViewControllersFactoryProtocol: AnyObject {
    
    func makeHomeViewController(flowDelegate: HomeFlowDelegate) -> HomeViewController
    func makeNewSnackViewController(flowDelegate: NewSnackFlowDelegate) -> NewSnackViewController
}
