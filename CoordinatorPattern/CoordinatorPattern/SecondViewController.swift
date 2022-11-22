//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Zardasht on 11/6/22.
//

import UIKit

class SecondViewController: UIViewController , Coordinating {
    
    
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemTeal
        self.title = "SecondView"
        ButtonTwo()
        
    }
    
    
    func ButtonTwo() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.setTitle("Tap Me!", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .systemMint
        button.addTarget(self, action: #selector(didTappedButtonTwo), for: .touchUpInside)
    }
    
    @objc func didTappedButtonTwo() {
        coordinator?.eventOccurred(with: .secondScreenTapped)
    }
   

  
}
