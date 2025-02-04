import UIKit

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
