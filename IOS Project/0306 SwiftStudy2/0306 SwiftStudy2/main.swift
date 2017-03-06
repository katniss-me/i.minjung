//
//  main.swift
//  0306 SwiftStudy2
//
//  Created by katniss on 2017. 3. 6..
//  Copyright © 2017년 katniss. All rights reserved.
//

import Foundation

print("Hello, World!")





let age = 2



if age < 5 {
    print("Baby")
}else if age>=7 && age < 20 {
    print("Child")
}else {
    print("Adult")
}



var animalAge = 0

    while animalAge < 5 {
    animalAge += 1
    print(animalAge)
    }



    for _ in 1...5 {
    print(5)


    for number in 1...5 {
    print (number)
    }



for name in ["anna","alex","brian"]{
    print("hello\(name)")
}

for (animalName, legs)in ["ant":6,"snack":0]{
    print ("\(animalName)is have \(legs)legs.")
    
}

}

switch age {
case 0,1,2,3,4:
    //break문 없이 조건을 하는 방법 , 콤마로 구분함
    print("switchbaby")
case 5 ..< 20:
    print("switchchild")
case 20 ... 30:
    print("switchadult")
default:
    print("adult")
}


func great(person:String) -> String {
    let greeting = <#value#>
    
}








