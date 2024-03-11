//
//  filmsCell.swift
//  FilmsApp
//
//  Created by Mehmet Tırpan on 12.03.2024.
//

import UIKit

protocol CellProtocol{
    func clickAddToCart(indexPath: IndexPath )
    
}
class FilmsCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewFilm: UIImageView!
    
    @IBOutlet weak var labelPrice: UILabel!
    
    var cellProtocol:CellProtocol?
    var indexPath: IndexPath?
    
    
    @IBAction func addToCartButton(_ sender: Any) {
        cellProtocol?.clickAddToCart(indexPath: indexPath!)
    }
    
}
