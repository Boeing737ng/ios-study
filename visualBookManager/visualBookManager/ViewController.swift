//
//  ViewController.swift
//  visualBookManager
//
//  Created by Kihyun Choi on 2018. 6. 12..
//  Copyright © 2018년 sfo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myBookManager = BookManager()
    
    @IBOutlet weak var countOfBooks: UILabel!
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let book1 = Book(name: "햄릿", genre: "비극", author: "셰익스피어")
        let book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author: "해밍웨이")
        let book3 = Book(name: "죄와벌", genre: "사실주의", author: "톨스토이")
        
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        
        countOfBooks.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func registerAction(_ sender: Any) {
        var tempBook = Book()
        tempBook.name = titleTextField.text!
        tempBook.author = authorTextField.text!
        tempBook.genre = genreTextField.text!
        
        myBookManager.registerBook(bookObject: tempBook)
        outputTextView.text = "\(titleTextField.text!) has been registered."
        countOfBooks.text = "\(myBookManager.countBooks())"
        
        titleTextField.text = ""
        authorTextField.text = ""
        genreTextField.text = ""
    }
    
    @IBAction func removeAction(_ sender: Any) {
        let inputTitle = titleTextField.text!
        myBookManager.removeBook(name: inputTitle)
        outputTextView.text = "\(inputTitle) has been removed."
        countOfBooks.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func searchAction(_ sender: Any) {
        let inputTitle = titleTextField.text!
        let result = myBookManager.searchBook(name: inputTitle)
        if result != nil {
            outputTextView.text = "\(result!)"
        } else {
            outputTextView.text = "We don't 'have \(inputTitle) in our library."
        }
    }
    
    @IBAction func showAllBookAction(_ sender: Any) {
        outputTextView.text = myBookManager.showAllBooks()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

