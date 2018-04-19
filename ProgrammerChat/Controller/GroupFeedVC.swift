//
//  GroupFeedVC.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 4/18/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {

    //Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var membersLbl: UILabel!
    
    @IBOutlet weak var sendBtnView: UIView!
    @IBOutlet weak var messageTxtField: insetTextField!
    
    @IBOutlet weak var sendBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sendBtnView.BindToKeyboard()
        
    }
    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
