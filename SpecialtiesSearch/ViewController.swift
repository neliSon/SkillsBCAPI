//
//  ViewController.swift
//  SpecialtiesSearch
//
//  Created by Nelson Chow on 2016-04-13.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit
import TagListView

class MasterViewController: UIViewController, TagListViewDelegate {
    
    // MARK: Properties
    @IBOutlet weak var mentorSearchBar: UISearchBar!
    @IBOutlet weak var tagListView: TagListView!
    
    var selectedSpecialties = Set<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tagListView.delegate = self
        populateWithTags()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: General Functions.
    
    func populateWithTags() {
        // create tags of all specialties
        for specialties in Specialties.allValues {
            tagListView.textFont = UIFont.systemFontOfSize(20)
            tagListView.tagBackgroundColor = UIColor.orangeColor()
            tagListView.alignment = .Center
            tagListView.addTag(String(specialties))
        }
    }
    
    func tagPressed(title: String, tagView: TagView, sender: TagListView) {
        if tagView.selected != true {
            tagView.tagBackgroundColor = UIColor.redColor()
            tagView.selected = true
            
            selectedSpecialties.insert(title)
//            print(selectedSpecialties)
        } else {
            tagView.tagBackgroundColor = UIColor.orangeColor()
            tagView.selected = false
            
            selectedSpecialties.remove(title)
//            print(selectedSpecialties)
        }
    }
}

