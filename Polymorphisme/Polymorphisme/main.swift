//
//  main.swift
//  Polymorphisme
//
//  Created by Service Informatique on 29/09/2020.
//  Copyright © 2020 MDS. All rights reserved.
//

import Foundation

var myAnimalCompagny : [CatLike] = []

for i in 0..<10 {
    if i % 3 == 0 {
        myAnimalCompagny.append(Cat())
    } else if i % 3 == 1 {
        myAnimalCompagny.append(Tiger())
    } else {
        myAnimalCompagny.append(CatLike())
    }
}

// Cast
for catlike in myAnimalCompagny {
    if catlike is Cat {
        var myCat : Cat = catlike as! Cat
        myCat.hug()
    } else if let tiger = catlike as? Tiger {
        tiger.eatHuman()
    } else {
        (catlike as! CatLike).hunt()
    }
}



