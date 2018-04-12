//
//  CreateGroupsVC.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 4/11/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//

import UIKit

class CreateGroupsVC: UIViewController {

    //Outlets
    @IBOutlet weak var titleTxtField: insetTextField!
    @IBOutlet weak var descriptionTxtField: insetTextField!
    @IBOutlet weak var emailSearchTxtField: insetTextField!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupMemberLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Actions
    @IBAction func closedBtnWasPressed(_ sender: Any) {
    }
    @IBAction func doneBtnWasPressed(_ sender: Any) {
    }
    

   

}
