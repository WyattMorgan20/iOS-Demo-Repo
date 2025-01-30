import UIKit

func calculate(symbol: String) -> (Int, Int) -> Int {
    //inner functon to add two numbers
    func add(num1 : Int, num2 : Int) -> Int{
        return num1 + num2
    }
    
    //inner function to subtract two numbers
    func subtract(num1 : Int, num2 : Int) -> Int{
        return num1 - num2
    }
    
    let operation = (symbol == "+") ? add : subtract
    return operation
}

let operation = calculate(symbol: "+")
let result = operation(10, 7)
print("Result:", result)

print()

func initials(fName: String, lName: String) -> String{
    let initialsOut = "\(fName.prefix(1)) \(lName.prefix(1))"
    return initialsOut
}

let initialsIn = initials(fName: "Wyatt", lName: "Morgan")
print(initialsIn)

print()

func initials2(_ fName: String, _ lName: String) -> String{
    let initialsOut2 = "\(fName.prefix(1)) \(lName.prefix(1))"
    return initialsOut2
}
// using "_ " when declaring the variables of a function allows you to call it without using variable names
let initialsIn2 = initials2("Wyatt", "Morgan")
print(initialsIn2)

