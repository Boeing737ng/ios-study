//
//  main.swift
//  BookManager
//
//  Created by Kihyun Choi on 2018. 6. 11..
//  Copyright © 2018년 sfo. All rights reserved.
//

import Foundation

var book1 = Book(name: "햄릿", genre: "비극", author: "셰익스피어")
//book1.printBook()
var book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author: "해밍웨이")
//book2.printBook()
var book3 = Book(name: "죄와벌", genre: "사실주의", author: "톨스토이")
//book3.printBook()

var myBookManager = BookManager()

myBookManager.registerBook(bookObject: book1)
myBookManager.registerBook(bookObject: book2)
myBookManager.registerBook(bookObject: book3)

//print(myBookManager.showAllBooks())
//print("Number of Books: \(myBookManager.countBooks())")

var searchResult = myBookManager.searchBook(name: "햄릿")

//Optional값을 처리하는 두가지 방법

// 1. -----
//if searchResult != nil{ //nil이 아닐경우
//    // 느낌표를 붙여서 optional값이 들어가지 않도록 언랩핑
//    print("\(searchResult!)(을)를 찾았습니다.")
//} else {
//    print("찾으시는 책이 없습니다.")
//}

// 2. -----
if let searchResult = searchResult {
    print("\(searchResult)(을)를 찾았습니다.")
} else {
    print("찾으시는 책이 없습니다.")
}

myBookManager.removeBook(name: "죄와벌")
print(myBookManager.showAllBooks())
print("Number of Books: \(myBookManager.countBooks())")

