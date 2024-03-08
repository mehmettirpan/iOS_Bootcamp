//
//  Contacts.swift
//  SecondAppInBootcamp
//
//  Created by Mehmet Tırpan on 20.02.2024.
//

import Foundation

class Contacts {
    var name:String?
    var age:Int?
    var height:Double?
    var single:Bool?
    
    init(name: String? = nil, age: Int? = nil, height: Double? = nil, single: Bool? = nil) {
        self.name = name
        self.age = age
        self.height = height
        self.single = single
    }
}
