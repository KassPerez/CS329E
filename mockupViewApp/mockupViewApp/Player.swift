//
//  Player.swift
//  mockupViewApp
//
//  Created by Kassandra Perez on 4/1/18.
//  Copyright © 2018 Katy McQuaid. All rights reserved.
//

import UIKit

class Player: NSObject, NSCoding  {
    var name: String
    var pronoun: String
    var major: String
    
    init(_name: String, _pronoun: String, _major: String) {
        self.name = _name
        self.pronoun = _pronoun
        self.major = _major
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(pronoun, forKey: "pronoun")
        aCoder.encode(major, forKey: "major")
    }
    
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as! String
        pronoun = aDecoder.decodeObject(forKey: "pronoun") as! String
        major = aDecoder.decodeObject(forKey: "major") as! String
    }
}
