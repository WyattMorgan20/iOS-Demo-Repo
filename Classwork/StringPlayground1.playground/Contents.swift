import UIKit

// WS 1:
print("Worksheet 1:")

var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"

print(fact.count)

fact += ", it has a better memory management"
print(fact)

print(dev.append(" by Apple"))

print(author.lowercased())

print(author.uppercased())

// in the swift language, elements in String accessed by the type Index
print(author[author.startIndex])

print(author[author.index(before: author.endIndex)])

print(dev[dev.startIndex])

print(dev[dev.index(before: dev.endIndex)])

print(author[author.index(after: author.startIndex)])

print(author[author.index(author.startIndex,offsetBy: 6)])

print(author[author.index(author.endIndex,offsetBy: -5)])

print(fact[fact.index(fact.endIndex,offsetBy: -4)])

var name1 = "Wyatt Morgan"

// positive go from left to right, starts with 0
print(name1[name1.index(name1.startIndex, offsetBy: 6)])

// negative go from right to left, starts with 1
print(name1[name1.index(name1.endIndex, offsetBy: -6)])

// WS 2:
print()
print("Worksheet 2:")

var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if clothes.hasPrefix("Socks") {
    print("The first item in clothes is socks")
}
else{
    print("socks is not the first item in clothes")
}

print(foodItems.split(separator: ","))

if clothes.contains(",") {
    print("Clothes contains more than one item")
}
else{
    print("Clothes contain only one item")
}

print(foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)])


shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy: 8)..<foodItems.endIndex]
print(shoppingList)

clothes.remove(at: clothes.firstIndex(of: "T")!)
print(clothes)

clothes.remove(at: clothes.firstIndex(of: "-")!)
print(clothes)

print("\(shoppingList), \(clothes)")
    
clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)
print(clothes)

var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)
print(shoppingList[..<firstIndexOfR])

var name2 = "Wyatt, Max, Drew"

print(name2[name2.startIndex..<name2.index(name2.endIndex, offsetBy: -5)])

// cannot go backwards?
// print(name2[name2.endIndex..<name2.index(name2.startIndex, offsetBy: 5)])

// WS 3:
print()
print("Worksheet 3:")

var course = "44643-Mobile Computing-iOS"

//Write code to do each of the following:
//I. Display only course number
print(course[course.startIndex..<course.index(course.startIndex, offsetBy: 5)])

//II. Display only the title of the course
print(course[course.index(course.startIndex, offsetBy: 6)..<course.index(course.endIndex, offsetBy: 0)])

//III. Display the first word of the title
print(course[course.index(course.startIndex, offsetBy: 6)..<course.index(course.endIndex, offsetBy: -14)])

// WS 4:
print()
print("Worksheet 4:")

let password = "Demo@123"
let confirmPassword = "Demo@123"

if password == confirmPassword {
    print("Password matches")
}
else{
    print("Passwords doesn't matches")
}

let currentYear = "2021"
var enteredYear = "2020"

if currentYear.elementsEqual(enteredYear) == true{
    print("Entered year matches with current year")
}
else{
    print("Entered year does not match with current year")
}
 
var vehiclePoweredBy = "Diesel"

if vehiclePoweredBy != "Electricity" {
 print("Vehicle is not eco-friendly")
}
else{
 print("Vehicle is eco-friendly")
}


let nameGiven = "Anthony Martial"
var enteredName = "ANTHONY MARTIAL"

if nameGiven.lowercased() == enteredName.lowercased(){
    print("Entered name and given name matches with each other")
}
else{
    print("Entered name does not matches with the given name")
}

