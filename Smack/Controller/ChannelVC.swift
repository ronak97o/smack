//
//  ChannelVC.swift
//  Smack
//
//  Created by ronak chhatbar on 25/12/17.
//  Copyright © 2017 ronak chhatbar. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
//Outlets
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue)
    {
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width-60
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: To_lOGIN, sender: nil)
    }
    

}
