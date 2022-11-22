//
//  ViewController.swift
//  FacadeDesignPatterns
//
//  Created by Zardasht on 11/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableVie: UITableView!
    
    let Network = NetworkAPI()
    var responseAPI: [Model] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableVie.dataSource = self
        tableVie.delegate = self
//
//        Network.allUsers { [weak self ] result in
//            switch result {
//            case .success(let response):
//                self?.responseAPI = response
//                DispatchQueue.main.async {
//                    self?.tableVie.reloadData()
//                }
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
        
        Network.userByID(completions: { [weak self] result in

            switch result {
            case .success(let response):
                self?.responseAPI = response
                DispatchQueue.main.async {
                    self?.tableVie.reloadData()
                }

            case .failure(let error):
                print(error.localizedDescription)
            }
        },userID: "1")
    }
}


extension ViewController: UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return responseAPI.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let responseData = responseAPI[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = responseAPI[indexPath.row].title
        cell.detailTextLabel?.text =  responseAPI[indexPath.row].body
        return cell
    }
    
    
}

