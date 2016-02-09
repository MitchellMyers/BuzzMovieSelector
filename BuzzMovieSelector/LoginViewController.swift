//
//  LoginViewController.swift
//  BuzzMovieSelector
//
//  Created by Mitchell Myers on 2/8/16.
//  Copyright © 2016 Myers App Development. All rights reserved.
//

import UIKit

let user_manager = UserManager()

class LoginViewController: UIViewController {
    
    @IBOutlet var username: UITextField?
    @IBOutlet var password: UITextField?
    @IBOutlet var loginMessage: UILabel?
    
    @IBAction func loginButtonPressed()  {
        let login_name: String = (username?.text)!
        let login_password: String = (password?.text)!
        if (user_manager.handleLogin(login_name, password: login_password)) {
            loginMessage!.text = "Login Successful"
        } else {
            loginMessage!.text = "Login Failed"
        }
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

