//
//  DetailPage.swift
//  ListProducts
//
//  Created by Mehmet Tırpan on 11.03.2024.
//

import UIKit

class DetailPage: UIViewController {

    @IBOutlet weak var imageViewProduct: UIImageView!
    
    @IBOutlet weak var labelProductPrice: UILabel!
    
    var product:Products?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let p = product{
            self.navigationItem.title = p.name
            imageViewProduct.image = UIImage(named: p.image!)
            labelProductPrice.text = "\(p.price!) $"
            
        }
        
    }
    

    @IBAction func addToCartButton(_ sender: Any) {
        
        if let p = product {
            print("Detail page: \(p.name!) add to cart")
        }
    }
    

}
