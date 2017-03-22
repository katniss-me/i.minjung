//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//nil

var number:Int?

//optional !
//number 2를 넣어주고, !를 붙여줘야 부를 수 있다.
//number = 2
//print(number2!)

//optional 2
//number가 nil이 아닐때
number = 1
if number != nil{
    print(number!)
}


//let
//아래 뜻은 이와 동일 > if number != nil {let num = number!}
if let num = number{
    print(num)
}


//switch
//num이라는 변수에 1을 주고,
var num = 1

if num ==1 {
    print("숫자는 1 입니다.")
}else if num ==2{
    print("숫자는 2 입니다.")
}else{
    print("1 도 아니고 2 도 아닙니다.")
}



