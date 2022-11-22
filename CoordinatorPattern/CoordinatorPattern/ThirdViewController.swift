//
//  ThirdViewController.swift
//  CoordinatorPattern
//
//  Created by Zardasht on 11/6/22.
//

import UIKit

class ThirdViewController: UIViewController , Coordinating{
    
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBrown
        title = "Third"
        
    }
    
}
