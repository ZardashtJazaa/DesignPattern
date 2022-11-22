//
//  Coordintor.swift
//  CoordinatorPattern
//
//  Created by Zardasht on 11/6/22.
//

import Foundation
import UIKit

enum Event  {
    
    case firstScreenTapped
    case secondScreenTapped
}


protocol Coordinator {
    
    var navigationController: UINavigationController? { get set }
    
    func eventOccurred(with type: Event)
    
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
