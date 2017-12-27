//
//  ChatVC.swift
//  Smack
//
//  Created by ronak chhatbar on 25/12/17.
//  Copyright © 2017 ronak chhatbar. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
//Outlets
    
    
    @IBOutlet weak var menuBtn: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController, action:
            #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

    

}
