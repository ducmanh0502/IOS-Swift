//
//  ClosuresViewController.swift
//  IOS-Swift
//
//  Created by Meditek on 8/4/16.
//  Copyright © 2016 NguyenDucManh. All rights reserved.
//

import UIKit

class ClosuresViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Defining a function Return values follow the -> sign
    
    func greetClosures(name: String, ability: String) -> (farewell: String , mayTheForceBeWithYou: String){
        return ("Good bye \(name)","May the \(ability) be with you")
    }
    // return type of the function itself
    func sum(x: Int, y: Int) -> (Int)
    {
        return x + y
    }
    // Following function is returning another function as is result
    func passing() -> ((String, Int) -> String){
        func timeName(name: String , times: Int) -> (String){
            return "\(name)\(times)"
        }
        return timeName
    }
    //variadic function // function have variable number of arguments
    
    func varidicFunction(numbers:Int...)->(){
        for number in numbers {
            print("number is \(number)")
        }
    }
    //Closures
//    {
//        (parmas) -> returnType in statements
//    }
    func mapFunctionToArray(){
        let bananas = ["Chuoi tay", "chuoi ta","Chuoi nga","Chuoi phap"]
        let eat  = bananas.map({
            (banana: String)-> String in "\(banana)"
        })
        print(eat)
    }
}
