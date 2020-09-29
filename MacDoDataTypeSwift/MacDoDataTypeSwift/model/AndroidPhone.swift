//
//  AndroidPhone.swift
//  MacDoDataTypeSwift
//
//  Created by Service Informatique on 29/09/2020.
//  Copyright © 2020 MDS. All rights reserved.
//

import Foundation

class AndroidPhone : SmartPhone {
    var name : String
    
    // Getter et Setter, simili C# pour les property
    var _price : Double
    var price : Double {
        get {
            return _price
        }
        
        set(price) {
            self._price = price
        }
    }
        
    var brand: String // stored property
    
    var description : String {// computed property // utiliser par exemple pour faire un toString (toString pas disponible sur swift)
        return "AndroidPhone \(name) \(price) \(brand)"
    }
    
    init(name: String, price: Double, brand: String) {
        self.name = name
        self._price = price
        self.brand = brand
    }
    
    func powerUp() {
        print("PowerOn")
    }
    
    func powerOff(){
        print("PowerOff")
    }

    func sendMessage() {
        print("message")
    }
    
    func takePicture() {
        print("random picture")
    }
    
    func cpy() -> AndroidPhone {
        return AndroidPhone(name: self.name, price: self.price, brand: self.brand)
    }
    
}

