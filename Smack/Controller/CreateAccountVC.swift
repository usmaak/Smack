//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Scott Kilbourn on 10/21/17.
//  Copyright © 2017 Scott Kilbourn. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func closePressed(_ sender: UIButton) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func pickBGColorPressed(_ sender: UIButton) {
    }
    
    @IBAction func pickAvatarPressed(_ sender: UIButton) {
    }
    
    @IBAction func createAccountPressed(_ sender: UIButton) {
        guard let email = emailTxt.text, emailTxt.text != "" else {return}
        guard let pass =  passTxt.text, passTxt.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                print("Registered user")
            }
        }
    }
}
