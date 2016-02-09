//
//  UserManager.swift
//  BuzzMovieSelector
//
//  Created by Mitchell Myers on 2/8/16.
//  Copyright © 2016 Myers App Development. All rights reserved.
//

import Foundation

public class UserManager {
    
    var users = [String: User]()
    
    func findUser(name: String) -> User {
        let mitch = User(name: "Mitch", password: "test")
        users["mmyers39"] = mitch
        let person = users[name]
        return person!
    }
    
    func addUser(name: String, password: String) {
        if (users[name] != nil) {
            let new_user = User(name: name, password: password)
            users[name] = new_user
        }
    }
    
    func handleLogin(name: String, password: String) -> Bool {
        let user = findUser(name)
        return user.checkPassword(password)
    }
    
}