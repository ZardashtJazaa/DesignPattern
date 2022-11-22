//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Zardasht on 11/6/22.
//

import UIKit

class ViewController: UIViewController , Coordinating {
    
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
        self.title = "Home"
        Button()
                
    }

    func Button() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.setTitle("Tap Me!", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(didTappedButton), for: .touchUpInside)
    }
    
    @objc func didTappedButton() {
        coordinator?.eventOccurred(with: .firstScreenTapped)
    }

}

