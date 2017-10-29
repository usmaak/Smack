//
//  LoginVCViewController.swift
//  Smack
//
//  Created by Scott Kilbourn on 10/21/17.
//  Copyright © 2017 Scott Kilbourn. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }

    @IBAction func closePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toCreateAccount", sender: nil)
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        spinner.isHidden = false
        spinner.startAnimating()
        
        guard let email = usernameTxt.text, usernameTxt.text != "" else {return}
        guard let pass = passwordTxt.text, passwordTxt.text != "" else {return}
        
        AuthService.instance.loginUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.findUserByEmail(completion: { (success) in
                    if success {
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                        self.dismiss(animated: true, completion: nil)
                    }
                })
            }
            else {
                UserDataService.instance.logoutUser()
            }
            
            self.spinner.isHidden = true
            self.spinner.stopAnimating()
        }
        
    }
    
    func setupView() {
        spinner.isHidden = true
        usernameTxt.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSForegroundColorAttributeName: smackPurplePlaceholder])
        passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSForegroundColorAttributeName: smackPurplePlaceholder])
    }
}
