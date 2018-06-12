//
//  Book.swift
//  BookManager
//
//  Created by Kihyun Choi on 2018. 6. 11..
//  Copyright © 2018년 sfo. All rights reserved.
//

struct Book {
    
    // Add question mark for Nil
    var name:String?
    var genre:String?
    var author:String?
    
    // Add exclamation mark for Nil
    func printBook(){
        print("Name : \(name!)")
        print("Genre : \(genre!)")
        print("Author : \(author!)")
        print("-------------------")
    }
}
