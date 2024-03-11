//
//  Products.swift
//  ListProducts
//
//  Created by Mehmet Tırpan on 11.03.2024.
//

import Foundation

class Products {
    var id: UUID?
    var name: String?
    var image: String?
    var price: Int?
    
    init(){
        
    }
    
    
    init(id: UUID, name: String, image: String, price: Int) {
        self.id = id
        self.name = name
        self.image = image
        self.price = price
    }
    

}
