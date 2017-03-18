//
//  BookManager.swift
//  0317 Swift Study
//
//  Created by katniss on 2017. 3. 17..
//  Copyright © 2017년 katniss. All rights reserved.
//

import Foundation


//class 를 먼저 만들어야 겠다.
class BookManager{
    var bookList = [Book]() //mutable array
    
    func addbook(_ bookObject:Book){
        bookList += [bookObject]
    }
}



func showAllBook() -> String{
    var strTemp = ""
    for bookTemp in bookList {
        strTemp += "Name : \(bookTemp.name)\n"
        strTemp += "Genre : \(bookTemp.genre)\n"
        strTemp += "author : \(bookTemp.author)\n"
    }
    return strTemp
}


func countBook() -> Int{
    return bookList.count
    
}
//nil도 되고 string 도 된다는  ? 옵셔널 표시.

func findBook(_ name:String) -> String? {
    for bookTemp in bookList {
        if bookTemp.name == name {
            strTemp += "Name : \(bookTemp.name)\n"
            strTemp += "Genre : \(bookTemp.genre)\n"
            strTemp += "author : \(bookTemp.author)\n"
        }
    }
    return nil //?옵셔널 벨류는 nil이 리턴 된다.

}

func removeBook(_ name:String){
    for bookTemp in BookList{
        if bookTemp.name == name{
            let index = (bookList as NSArray).index(of:bookTemp)
            bookList.remove(at:index)
        }
    }
}


