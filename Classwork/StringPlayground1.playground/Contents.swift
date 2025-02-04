import UIKit

// WS 1:
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

var name = "Wyatt Morgan"

// positive go from left to right, starts with 0
print(name[name.index(name.startIndex, offsetBy: 6)])

// negative go from right to left, starts with 1
print(name[name.index(name.endIndex, offsetBy: -6)])

// WS 2:
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

foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]


shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy: 8)..<foodItems.endIndex]


clothes.remove(at: clothes.firstIndex(of: "T")!)


clothes.remove(at: clothes.firstIndex(of: "-")!)


print("\(shoppingList), \(clothes)")
    
clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)

var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)
print(shoppingList[..<firstIndexOfR])
