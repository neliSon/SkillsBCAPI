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
    var mentors = [Mentor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tagListView.delegate = self
        populateWithTags()
        fetchMentors()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    @IBAction func showMentorsButton(sender: UIButton) {
        if selectedSpecialties.count != 0 {
            // search for mentors with specialties
            // segue to next view controller
            
        } else {
            // error message
        }
    }
    
    // MARK: Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowMentorsSegue" {
            let mentorsTVC = segue.destinationViewController as! MentorsTableViewController
            mentorsTVC.mentors = mentors
            
        }
    }

    // MARK: General Functions
    func populateWithTags() {
        // Create tags of all specialties.
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
    
    func fetchMentors() {
        let URLString = "http://skillsbc.vansortium.com/mentors"
        let baseURL = NSURL(string: URLString)!
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithURL(baseURL) { (data, response, error) in
            if (error != nil) {
                return
            }
            if let jsonUnformattedArray = try? NSJSONSerialization.JSONObjectWithData(data!, options: []),
            let jsonMentorsArray = jsonUnformattedArray as? [[String:NSObject]]{
                
                for mentor in jsonMentorsArray {
                    print ("mentor is \(mentor)")
                    
                    let myMentor = Mentor(dictionary: mentor)
                    
                    self.mentors.append(myMentor)
                }
            }
        }
        
        task.resume()
        
    }
}

