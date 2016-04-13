//
//  ViewController.swift
//  SpecialtiesSearch
//
//  Created by Nelson Chow on 2016-04-13.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
    // MARK: properties
    @IBOutlet weak var mentorSearchBar: UISearchBar!
    @IBOutlet weak var tagListView: TagListView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

