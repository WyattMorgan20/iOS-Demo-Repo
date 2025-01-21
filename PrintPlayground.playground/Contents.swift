import UIKit

var greeting = "Hello, playground"
print(greeting);

var welcome = "Welcome to Swift!🤣"
print(welcome);

var name: String = "John"
print("Hello, \(name)!");

print("Hi, + name")
print("Hi, " + name)

print("Hi", 12, 12.99)
//print("Hi" + 12 + 12.99) cannot concatonate with + for different data types

print("""
Welcome to NW Missouri State
Maryville MO
Nodaway Country
""")
var address = """
Welcome to NW Missouri State
Maryville MO
Nodaway Country
"""

print(1, 2, 3, 4) //default seperator with , is space
print(1, 2, 3, 4, separator: "-")
print(1, 2, 3, 4, separator: "🥹")
//print("Numbers: ", 1, 2, 3, 4, separator: "-") cannot use seperator for different data types

print("Variables so far are: \(welcome), \(name), \(address)")
print("------------------------")
print("Variables so far are: \r\(welcome), \r\(name), \r\(address)")
// \r is the new line character

var battertyLife = 12

let age = 23 // let is constants
print(age)
print(age * 2)

//age = age + 2 cannot change a constant

print(age)

var appName = "Xcode";
print(appName)
appName = "NetBeans";
print(appName)

var number: Int = 456
//number = 456.7 cannot change data type of variable
print(number)

// Tuples:
var nintendoConsoles = (Wii: 2004, WiiU: 2012, Switch: 2016, Switch2: 2025);
print(nintendoConsoles)
print(nintendoConsoles.Wii)
print(nintendoConsoles.WiiU)
print(nintendoConsoles.Switch)
print(nintendoConsoles.Switch2)
print("🥸")
print(nintendoConsoles, terminator: " Years: ")
print(nintendoConsoles.Wii, terminator: ", ")
print(nintendoConsoles.WiiU, terminator: ", ")
print(nintendoConsoles.Switch, terminator: ", ")
print(nintendoConsoles.Switch2, terminator: ", ")// terminator is optional for printing and substitutes new line

var origin = (x: 0, y: 0)
var point = origin
print(point)

print("(", point.x, terminator: ", ")
print(point.y, ")")

print("(\(point.x), \(point.y))")
print("(", point.x, ", ", point.y, ")", separator: "")

print("(,)")

