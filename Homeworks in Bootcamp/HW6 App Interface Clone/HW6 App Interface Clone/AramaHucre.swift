//
//  AramaHucre.swift
//  HW6 App Interface Clone
//
//  Created by Mehmet Tırpan on 17.03.2024.
//

import UIKit

class AramaHucre: UITableViewCell {

    
    @IBOutlet weak var kategoriLogo: UIImageView!
    
    @IBOutlet weak var kategoriBaslik: UILabel!
    
    @IBOutlet weak var kategoriDetay: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
