//
//  MentorTableViewCell.swift
//  SpecialtiesSearch
//
//  Created by Nelson Chow on 2016-04-13.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit

class MentorTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var mentorNameLabel: UILabel!
    @IBOutlet weak var specialtiesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
