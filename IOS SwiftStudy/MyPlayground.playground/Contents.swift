//: Playground - noun: a place where people can play

import UIKit

class Vehicle{
    var currentSpeed = 0.0 //stored property
    var description:String{ //comjputed property
        return "traveling at \(currentSpeed) miles per hour"
        
    }
    func makeNoise(){
        print("noiseless")
        
    }
    
}

let someVehicle = Vehicle();
someVehicle.currentSpeed = 1.0
print("Vehicle:\(someVehicle.description)")

class Bycycle:Vehicle{
    var hasBasket = false
    
}

let bicycle = Bycycle() //객체가 만들어짐
bicycle.hasBasket = true

//상속이 잘되어있는지 알기위해
bicycle.currentSpeed = 15.0
print("Bycycle:\(bicycle.description)")

class Tandem:Bycycle{
    var currentNumberOfPassengers = 0
    override var description: String{
        return "treveling at \(currentSpeed) miles per hour, number of passenger:\(currentNumberOfPassengers),. basket : \(hasBasket)"
        
    }
}

let tandem = Tandem ()
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0

print("Tandem : \(tandem.description)")


class Train:Vehicle{
    override func makeNoise() {
        print("Choo Choo")
        
    }
}

let train = Train()
train.makeNoise()

class Car:Vehicle{
    var gear = 1
    override var description:String{
        return super.description + "in gear\(gear)"
        
    }
}
let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car:\(car.description)")


class AutomaticCar:Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed/10)+1
            
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 30.0
print("automaticCar :\(automatic.description)")


//***struct 구조체***
var name = ["park","choi"]
var age = [3,4,5,6]
var height = [40,50,60]
print(name[0],age[0],height[0])

struct Student {
    var name:String
    var age:Int
    var height:Int
}
//구조체의 용도
var student1 = Student(name: "park", age: 3, height: 40)
var student2 = Student(name: "chun", age: 4, height: 50)

//구조체의 상속이 안된다.



//***optional value***

class Optional{

var optionalString:String?
//safety 안전하게 사용하자는 애플의 생각.

func hello(){
    print(optionalString==nil)//true 라고 찍힘.
    }
}

var option = Optional()
option.hello()











		