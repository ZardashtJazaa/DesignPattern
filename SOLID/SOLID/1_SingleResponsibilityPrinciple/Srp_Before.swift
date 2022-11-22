//
//  Srp_Before.swift
//  Created by Zardasht on 11/4/22.
//

import Foundation
//


import Foundation

fileprivate class DataHandler {
    
    func handle() {
        let data = loadData()
        let list = parse(data: data)
        save(model: list)
    }
    
    
    func loadData() -> Data {
        return Data()
    }
    
    func parse(data:Data) -> Any {
        return ""
    }
 
    func save(model: Any) {
        
        //SaveHere
    }
    
}
