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
    
    var group: Group?
    
    func initGroupData(forGroup group: Group) {
        self.group = group
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sendBtnView.BindToKeyboard()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        groupTitleLbl.text = group?.groupTitle
        DataService.instance.getEmailsFor(group: group!) { (returnedEmails) in
            self.membersLbl.text = returnedEmails.joined(separator: ", ")

        }        
    }
    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
