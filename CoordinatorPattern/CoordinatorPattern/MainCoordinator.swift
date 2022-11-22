//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Zardasht on 11/6/22.
//

import Foundation
import UIKit


class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    func eventOccurred(with type: Event) {
        
        switch type {
            
        case .firstScreenTapped:
            var secondVc: UIViewController & Coordinating = SecondViewController()
            secondVc.coordinator = self
            navigationController?.pushViewController(secondVc, animated: true)
            
        case .secondScreenTapped:
            
            var thirdScrren: UIViewController & Coordinating = ThirdViewController()
            thirdScrren.coordinator = self
            navigationController?.present(thirdScrren, animated: true)
        }
    }
    
    func start() {
        
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
    
    
}
