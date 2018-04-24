//
//  GroupFeedVC.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 4/18/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//

import UIKit
import Firebase

class GroupFeedVC: UIViewController {

    //Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var membersLbl: UILabel!
    
    @IBOutlet weak var sendBtnView: UIView!
    @IBOutlet weak var messageTxtField: insetTextField!
    
    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet var mainView: UIView!
    
    var group: Group?
    var groupMessages = [Message]()
    
    func initGroupData(forGroup group: Group) {
        self.group = group
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //messageTxtField.BindToKeyboard()
        mainView.BindToKeyboard()
        //sendBtnView.BindToKeyboard()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
   // deinit {
        //        sendBtnView.unBindFromKeyboard()
   //     mainView.unBindFromKeyboard()
   // }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        groupTitleLbl.text = group?.groupTitle
        DataService.instance.getEmailsFor(group: group!) { (returnedEmails) in
            self.membersLbl.text = returnedEmails.joined(separator: ", ")

        }
        
        DataService.instance.REF_GROUPS.observe(.value) { (snapshot) in
            DataService.instance.getAllMessagesForDesiredGroup(desiredGroup: self.group!, handler: { (returnedGroupMessages) in
                self.groupMessages = returnedGroupMessages
                self.tableView.reloadData()
                
                if self.groupMessages.count > 0 {
                    print("animated up")
                    self.tableView.scrollToRow(at: IndexPath.init(row: self.groupMessages.count - 1, section: 0), at: .none, animated: true)
                }
            })
        }
        
    }
    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
        if messageTxtField.text != "" {
            messageTxtField.isEnabled = false
            sendBtn.isEnabled = false
            DataService.instance.uploadPost(withMessage: messageTxtField.text!, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: group?.key, sendComplete: { (complete) in
                if complete {
                    self.messageTxtField.text = ""
                    self.messageTxtField.isEnabled = true
                    self.sendBtn.isEnabled = true
                }
            })
        }
    }
    
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}



extension GroupFeedVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupMessages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "groupFeedCell", for: indexPath) as? GroupFeedCell else { return UITableViewCell() }
        let message = groupMessages[indexPath.row]
        
        DataService.instance.getUsername(forUID: message.senderID) { (email) in
            cell.configureCell(profileImage: UIImage(named: "defaultProfileImage")!, email: email, content: message.content)

        }
        return cell
    }
}











