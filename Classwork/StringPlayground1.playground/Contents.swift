import UIKit

var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"

print(fact.count)

print(fact += ", it has a better memory management")

print(dev.append(" by Apple"))

print(author.lowercased())

print(author.uppercased())

print(author[author.startIndex])

print(author[author.index(before: author.endIndex)])

print(dev[dev.startIndex])

print(dev[dev.index(before: dev.endIndex)])

print(author[author.index(after: author.startIndex)])

print(author[author.index(author.startIndex,offsetBy: 5)])

print(author[author.index(author.endIndex,offsetBy: -5)])

print(fact[fact.index(fact.endIndex,offsetBy: -4)])

