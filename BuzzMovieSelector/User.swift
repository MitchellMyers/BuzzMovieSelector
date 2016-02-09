//
//  User.swift
//  BuzzMovieSelector
//
//  Created by Mitchell Myers on 2/8/16.
//  Copyright © 2016 Myers App Development. All rights reserved.
//

import Foundation

public class User {
    
    let name: String
    let password: String
    
    init (name: String, password: String) {
        self.name = name
        self.password = password
    }
    
    func checkPassword(checked_password: String) -> Bool {
        return checked_password == password;
    }
    
}
