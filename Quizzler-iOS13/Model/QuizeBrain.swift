//
//  QuizeBrain.swift
//  Quizzler-iOS13
//
//  Created by Bijon Krishna Bairagi on 10/22/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct QuizeBrain {
    let quiz = [
        Questions(a: "In Swift, an array can hold elements of different types.", q: "True"),
        Questions(a: "Swift arrays are zero-indexed, meaning the first element is at index 0.", q: "False"),
        Questions(a: "In Swift, the size of an array is fixed once it is created.", q: "True"),
        Questions(a: "You can use the append() method to add a new element to a Swift array.", q: "False"),
        Questions(a: "In Swift, let keyword creates a mutable array.", q: "True"),
        Questions(a: "Swift arrays are value types, not reference types.", q: "False"),
        Questions(a: "The count property of a Swift array returns the total number of elements in the array.", q: "True"),
        Questions(a: "In Swift, you cannot create an empty array.", q: "False"),
        Questions(a: "To remove an element from a specific index in a Swift array, you can use the remove(at:) method.", q: "True"),
        Questions(a: "Swift arrays can store nil values without explicitly declaring them as optional.", q: "False"),
        Questions(a: "In Swift, dictionaries store key-value pairs, and the keys must be unique.", q: "True"),
        Questions(a: "Swift uses the var keyword to declare constants.", q: "False"),
        Questions(a: "The if let syntax in Swift is used to safely unwrap optional values.", q: "True"),
        Questions(a: "Swift does not support inheritance in classes.", q: "False"),
        Questions(a: "In Swift, tuples can hold a mix of different data types.", q: "True"),
        Questions(a: "Swift requires the self keyword to access instance properties within instance methods.", q: "False"),
        Questions(a: "Functions in Swift can be nested inside other functions.", q: "True"),
        Questions(a: "The switch statement in Swift must be exhaustive, meaning all possible cases must be covered.", q: "True"),
        Questions(a: "Swift’s nil represents the absence of a value for all data types, not just optionals.", q: "False"),
        Questions(a: "Closures in Swift are reference types.", q: "True"),
        Questions(a: "In Swift, a class is a value type.", q: "False"),
        Questions(a: "Swift structs can have stored properties, methods, and initializers.", q: "True"),
        Questions(a: "The guard statement in Swift is used to handle optional values and must include an else clause.", q: "True"),
        Questions(a: "Swift does not allow for operator overloading.", q: "False"),
        Questions(a: "Protocols in Swift can have both required and optional methods.", q: "True"),
        Questions(a: "In Swift, enums can have associated values of different types.", q: "True"),
        Questions(a: "The defer keyword in Swift ensures that a block of code is executed immediately when encountered.", q: "False"),
        Questions(a: "Swift provides built-in memory management with Automatic Reference Counting (ARC).", q: "True"),
        Questions(a: "In Swift, computed properties can be read-only or read-write.", q: "True"),
        Questions(a: "Extensions in Swift allow you to add new functionality to existing types without subclassing.", q: "True")
    ]

    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool{
        if userAnswer == quiz[questionNumber].answers {
            score += 1
            return true
        }
        else{
           return false
        }
    }
    
    func getScore() -> Int{
        return score
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion(){
        if questionNumber < quiz.count-1{
            questionNumber += 1
        }
        else {
            questionNumber = 0
            score = 0
        }
    }
    
    
    
}
