//
//  CreateAccountVC.swift
//  Smack
//
//  Created by ronak chhatbar on 25/12/17.
//  Copyright © 2017 ronak chhatbar. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
//outlets
    @IBOutlet weak var usernameTxt: UITextField!
    
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var passTxt: UITextField!
    
    @IBOutlet weak var userImageImg: UIImageView!
    
    //Variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5,0.5,0.5,1]"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
   
    @IBAction func pickBgColorPressed(_ sender: Any) {
        
        
        
    }
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        
        
        guard let name = usernameTxt.text , usernameTxt.text != "" else { return }
        guard let email = emailTxt.text , emailTxt.text != "" else { return }
        guard let pass = passTxt.text , passTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if success {
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            if success {
                                print(UserDataService.instance.name, UserDataService.instance.avatarName)
                                self.performSegue(withIdentifier: UNWIND, sender: nil)
                            }
                        })
                    }
                })
            }
        }
        print("button pressed")
        
        
    }
    
    @IBAction func picAvatarPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_AVATAR, sender: nil)
    }
    
    
    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
