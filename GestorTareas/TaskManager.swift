//
//  File.swift
//  GestorTareas
//
//  Created by Carlos Gonzalez on 15/08/2019.
//  Copyright © 2019 Carlos Gonzalez. All rights reserved.
//

import Foundation

class TaskManager {
    
    static let sharedInstance = TaskManager()
    
    var tasks: [[String:String]] = [[String:String]]()
    
    func save() {
        UserDefaults.standard.set(tasks,forKey: "tasks")
    }
    
    func load(){
        if let array = UserDefaults.standard.array(forKey: "tasks") as? [[String:String]]{
            tasks = array
        }
    }
    
}
