//
//  MeVC.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 4/4/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//

import UIKit

class MeVC: UIViewController {

    //Outlets
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //Actions
    @IBAction func signOutBtnWasPressed(_ sender: Any) {
    }
    
    

}
