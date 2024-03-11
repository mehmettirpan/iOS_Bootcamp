//
//  DetailPage.swift
//  FilmsApp
//
//  Created by Mehmet Tırpan on 12.03.2024.
//

import UIKit

class DetailPage: UIViewController {

    @IBOutlet weak var labelFilm: UILabel!
    @IBOutlet weak var imageViewFilm: UIImageView!
    @IBOutlet weak var labelPrice: UILabel!
    
    
    var film: Films?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let f = film{
            labelFilm.text = f.name
            imageViewFilm.image = UIImage(named: f.image!)
            labelPrice.text = "\(f.price!)₺"
        }
        
    }
    


}
