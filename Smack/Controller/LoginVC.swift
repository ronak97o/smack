//
//  LoginVC.swift
//  Smack
//
//  Created by ronak chhatbar on 25/12/17.
//  Copyright © 2017 ronak chhatbar. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func createAccountBtnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: To_CREATE_ACCOUNT, sender: nil)
    }
    
    
    @IBAction func closedPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    

}
