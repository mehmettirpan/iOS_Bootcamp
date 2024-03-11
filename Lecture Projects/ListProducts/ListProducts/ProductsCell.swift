//
//  ProductsCell.swift
//  ListProducts
//
//  Created by Mehmet Tırpan on 11.03.2024.
//

/*
 Bu kod ile birlikte ürünlerin yazılı olduğu hücreye bağlanıp düzenleyip çoğaltacağız
 */

import UIKit

protocol CellProtocol {
    func clickedAddToCart(indexPath:IndexPath)
        
    
}

class ProductsCell: UITableViewCell {

    @IBOutlet weak var cellBackround: UIView!
    @IBOutlet weak var imageViewProduct: UIImageView!
    @IBOutlet weak var labelProductName: UILabel!    
    @IBOutlet weak var labelProductPrice: UILabel!
    
    var cellProtocol: CellProtocol?
    var indexPath:IndexPath?
    override func awakeFromNib() {
        super.awakeFromNib()
        labelProductName.textColor = UIColor(named: "textColor")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBAction func addToCartButton(_ sender: Any) {
        cellProtocol?.clickedAddToCart(indexPath: indexPath!)
    }
    
    
}
