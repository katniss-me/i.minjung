//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//*데이터 처리를 합시다.

//list
var list = ["인도","중국","인도네시아"]

//append = 더하기
list.append("한국")
list


//remove at index 2번째 인덱스에서 지우기
list.remove(at: 2)
list


//tuple은 인덱스 스트링을 바꾸는것.
var tuple = ("미국","영국","방글라데시")
tuple.1 = "일본"
tuple


//! optional



//*dictionary
//key 단어 & value 단어 
//[key : value]


var dictionary = [
    "dog" : "개",
    "cat" : "고양이",
    "snack" : "뱀"
    
]

dictionary["dog"]
dictionary.removeValue(forKey: "cat")
dictionary


//if else 문
//num == 1 이 뜻은, num이 1과 같다면, 이라는 뜻
//if a == b {}

var num = 2
if num == 1{
    print("숫자는 1입니다.")
}else{
    print("숫자는 1이 아닙니다.")
}

//if문 2개일때
var a = 1
var b = 2

//if a == b {
//    print("a는 b와 같다.")
//}else{
//    print("a는 b와 같지 않다.")
//}


if a != b {
    print("a는 b와 같지 않다.")
}else{
    print("a는 b와 같다.")
}

var c = 2
if c == 1 {
    print("숫자는 1입니다.")
}else{
    print("숫자는 2입니다.")
}

//c 가 1 혹은 2라면?
//||
var num2 = 3
if num2 == 1 || num2 == 2 {
    print("숫자 1 혹은 2 입니다.")
}

//x 가 a 그리고 b 라면?
//and

if num2 < 0 && num2 % 2 == 0 {
    print("num2는 자연수이고 짝수입니다.")
}

//! boolean 
//bool을 체크 하기 위해 is 형태를 많이 쓴다.

//var isChecked = false
//isChecked

var isNotChecked = true
isNotChecked

//반대의 의미
if !isNotChecked{
    print("확인되었음")
}

















