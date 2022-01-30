//
//  SRP_Before.swift
//  SOLID_Principles
//
//  Created by Alex Nagy on 18.12.2021.
//

import Foundation

// violates Single Responsibility Principle because it has three responsibilities
fileprivate class DataHandler {
    
    func handle() {
        let data = loadData()
        let list = parse(data: data)
        save(model: list)
    }
    
    func loadData() -> Data {
        return Data()
    }
    
    func parse(data: Data) -> Any {
        return ""
    }
    
    func save(model: Any) {
        // save here
    }
    
}
