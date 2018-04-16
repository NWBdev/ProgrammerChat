//
//  SecondViewController.swift
//  ProgrammerChat
//
//  Created by Nathaniel Burciaga on 3/20/18.
//  Copyright © 2018 Nathaniel Burciaga. All rights reserved.
//  Test

import UIKit

class GroupsVC: UIViewController {

    //Outlets
    @IBOutlet weak var groupsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupsTableView.delegate = self
        groupsTableView.dataSource = self
    }
    
    
   
}


extension GroupsVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = groupsTableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as? GroupCell else { return UITableViewCell() }
        cell.configureCell(title: "Test Cell Group VC", description: "this is a test description", memberCount: 3)
        return cell
    }
}
