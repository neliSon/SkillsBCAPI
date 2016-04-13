//
//  MentorsTableViewController.swift
//  SpecialtiesSearch
//
//  Created by Nelson Chow on 2016-04-13.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit

class MentorsTableViewController: UITableViewController {

    // MARK: Properties
    var mentors:[Mentor]!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mentors.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MentorTableViewCell", forIndexPath: indexPath)

        let mentor = mentors[indexPath.row]
        
        cell.textLabel?.text = mentor.firstName

        return cell
    }
 

    // MARK: - Navigation


}
