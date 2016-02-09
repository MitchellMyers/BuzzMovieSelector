//
//  RegistrationViewController.swift
//  BuzzMovieSelector
//
//  Created by Mitchell Myers on 2/8/16.
//  Copyright © 2016 Myers App Development. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet var fullname: UITextField?
    @IBOutlet var username: UITextField?
    @IBOutlet var password: UITextField?
    
    @IBAction func createAccount() {
        let login_username: String = (username?.text)!
        NSLog(login_username)
        let login_password: String = (password?.text)!
        NSLog(login_password)
        let login_fullname: String = (fullname?.text)!
        NSLog(login_fullname)
        let users = UserManager()
        users.addUser(login_username, password: login_password)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
