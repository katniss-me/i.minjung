//
//  Book.swift
//  0317 Swift Study
//
//  Created by katniss on 2017. 3. 17..
//  Copyright © 2017년 katniss. All rights reserved.
//

import Foundation
//import main 안해도 자동으로 인식.


//class만듦
class Book{
    var name = ""
    var genre = ""
    var author = ""
    
    func bookPrint(){
        print("name:\(name)")
        print("genre:\(genre)")
        print("author:\(author)")
    }
}

