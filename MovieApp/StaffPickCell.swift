//
//  StaffPickCell.swift
//  MovieApp
//
//  Created by Pradeep Voleti on 11/01/23.
//

import UIKit

class StaffPickCell: UITableViewCell {

    
    @IBOutlet weak var ratingBar: AARatingBar!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
//            (red: 20/256, green: 28/256, blue: 37/256, alpha: 0.1)
