//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Scott Kilbourn on 10/21/17.
//  Copyright © 2017 Scott Kilbourn. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func closePressed(_ sender: UIButton) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
