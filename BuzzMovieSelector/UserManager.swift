//
//  UserManager.swift
//  BuzzMovieSelector
//
//  Created by Mitchell Myers on 2/8/16.
//  Copyright © 2016 Myers App Development. All rights reserved.
//

import Foundation

class UserManager {
    
    var users = [String: User]()
    
    func findUser(name: String) -> User? {
        let person = users[name]
        return person
    }
    
    func addUser(name: String, password: String) {
        if (users[name] == nil) {
            let new_user = User(name: name, password: password)
            users[name] = new_user
        }
        
    }
    
    func testUsers() {
        for (name, user) in users {
            NSLog(name)
            NSLog(user.getPassword())
            NSLog(String(users.count))
        }
    }
    
    func handleLogin(name: String, password: String) -> Bool {
        if let user = findUser(name) {
            return user.checkPassword(password)
        } else {
            return false
        }
    }
    
    
}