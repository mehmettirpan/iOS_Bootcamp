//
//  ContactsCell.swift
//  ContactsApp
//
//  Created by Mehmet Tırpan on 9.03.2024.
//

import UIKit

class ContactsCell: UITableViewCell {

    @IBOutlet weak var labelPersonName: UILabel!
    
    @IBOutlet weak var labelPersonNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
