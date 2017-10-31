//
//  AddChannelVC.swift
//  Smack
//
//  Created by Scott Kilbourn on 10/30/17.
//  Copyright © 2017 Scott Kilbourn. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var chanDesc: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    @IBAction func createChannelPressed(_ sender: UIButton) {
    }
    
    @IBAction func closeModalPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSForegroundColorAttributeName: smackPurplePlaceholder])
        chanDesc.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSForegroundColorAttributeName: smackPurplePlaceholder])

    }
}
