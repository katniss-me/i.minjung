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


//func

func sayHello() {
    print("hello")
}

sayHello()
func sayHello2(name:String){
    print("hello \(name)")
    
}

sayHello2(name:"minjung")
func sayhello3(name:String)->String{
  return "Hello" + name
}


print(sayhello3(name:"minjung"))
func sayHello4(name:String="minjung"){
    print("Hello\(name)")
    
}
//값을 넣어주면 넣은 걸로 출력, 안 넣어주면 기

func sayHello5(insertName:String,internationalAge:Int){
 
}
    
sayHello5(insertName:"katniss",internationalAge:29)
func sayHello6(name:String,age:Int)->String{
return "\(name)is \(age)years old"
}




























