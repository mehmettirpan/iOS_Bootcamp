//
//  Films.swift
//  FilmsApp
//
//  Created by Mehmet Tırpan on 12.03.2024.
//

import Foundation

class Films{
    
    var id: UUID?
    var name: String?
    var image: String?
    var price: Int?
    
    init(){
        
    }
    
    
    init(id: UUID? = nil, name: String? = nil, image: String? = nil, price: Int? = nil) {
        self.id = id
        self.name = name
        self.image = image
        self.price = price
    }
}
