//
//  BookManager.swift
//  BookManager
//
//  Created by Kihyun Choi on 2018. 6. 12..
//  Copyright © 2018년 sfo. All rights reserved.
//

import Foundation

class BookManager {
    //mutable array: 가변 길이 배열
    var bookList = [Book]()
    
    func registerBook(bookObject:Book) {
        bookList += [bookObject]
    }
    
    func showAllBooks() -> String {
        var tempStr = ""
        
        for item in bookList {
            tempStr += "Name: \(item.name!)\n"
            tempStr += "Genre: \(item.genre!)\n"
            tempStr += "Author: \(item.author!)\n"
            tempStr += "------------------\n"
        }
        return tempStr
    }
    
    func countBooks() -> Int {
        return bookList.count
    }
    
    // Nil 값이 나올수도 있기 때문에 리턴타입 뒤에 물음표 추가
    func searchBook(name:String) -> String?{
        var tempStr = ""
        for item in bookList {
            if item.name! == name {
                tempStr += "Name: \(item.name!)\n"
                tempStr += "Genre: \(item.genre!)\n"
                tempStr += "Author: \(item.author!)\n"
                tempStr += "------------------\n"
                return tempStr
            }
        }
        return nil
    }
    
    func removeBook(name:String) {
        //list.enumerated(): 배열의 메소드로써 (index,value) 형태의 tuple로 넘겨줌
        for (index,value) in bookList.enumerated() {
            if value.name == name {
                bookList.remove(at: index)
            }
        }
    }
}
