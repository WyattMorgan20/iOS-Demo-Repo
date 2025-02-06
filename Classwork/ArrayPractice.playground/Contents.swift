import UIKit

var numbers: [Int] = [1, 4, 2, 9, 6, 8]

numbers.sort()

print(numbers)

var oddNum: [Int] = [1, 3, 5, 7, 9]
var evenNum: [Int] = [2, 4, 6, 8, 10]

var num = [Int]()
num.append(contentsOf: oddNum)
num.append(contentsOf: evenNum)

print(num)

num.sort()
print(num)

num.reverse()
print(num)

var letters: [String] = ["B", "D", "C", "A"]
letters.sort()
print(letters)
