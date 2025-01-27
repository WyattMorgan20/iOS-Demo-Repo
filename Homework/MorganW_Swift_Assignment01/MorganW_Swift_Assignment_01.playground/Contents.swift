import UIKit

//*******Questions******//
// 1. In which year was the first version of the Swift programming language introduced?
// Explain why Swift is considered a modern and user-friendly programming language.
// Also, describe type safety and type inference in Swift with examples.
print("Q1P1 - 2014")
print("Q1P2 - It is considered modern and user friendly because it very easy to read and creating code is simplified because of things like how printing is just print(). It is also very efficient and quick.")
print("Q1P3.1 - Type safety means it enforces certain items being set as certain data types to prevent against any type mismatches causing errors.")
print("ex: var name: String = 'Wyatt' name will remain a string unless properly converted to something else.")
print("Q1P3.2 - Type inference means it is able to infer what a data type is for a variable, this allows cleaner and more concise code.")
("ex: var age = 23 it infers age is an int without declaring it.")
print("----------------------")
// End of question 1


// 2. Declare a constant 'pi' of type Double with the value 3.14. Write code to calculate
// the area of a circle with a radius of 10.0 units using the formula: Area = pi * radius * radius.
// Print the calculated area as shown in the sample output below:
// "The area of the circle with radius 10.0 is **** square units."
let pi: Double = 3.14
var area = pi * 10.0 * 10.0
print("The area of the circle with radius 10.0 is \(area) square units.")
print("----------------------")
// End of question 2


// 3. Declare a variable with a value of 212°F (boiling point of water) in Fahrenheit, convert it to Celsius,
// and round it to one decimal place. Print the result in this format:
// "Temperature: 212°F is equivalent to ****°C."
var far: Double = 212.0
var cel = (far - 32) * 5 / 9
var rounded = round(cel * 10) / 10
print("Temperature: 212°F is equivalent to \(rounded)° C")
print("----------------------")
// End of question 3


// 4. Write three statements about why Swift is a great language for beginners and developers.
// Display the first two statements on one line and the third statement on the next line using print statements.
print("----------------------")
// End of question 4


// 5. Display the following using a single print statement:
// "Swift is an intuitive, powerful, and safe programming language designed for iOS and other Apple platforms.
// It offers modern features, concise syntax, and exceptional performance that developers love."
print("----------------------")
// End of question 5


// 6. Declare two variables, num1 and num2, and assign them any two 3-digit numbers.
// Write code to calculate their product and determine how many digits the product contains.
// Print the result in this format:
// "The product of <num1> and <num2> is ****, and it has **** digits."
print("----------------------")
// End of question 6


// 7. Create a variable with the value "Swift programming is fun!".
// Count the total number of characters excluding spaces and print them as individual characters separated by "+".
// For example: "S+w+i+f+t+p+r+o+g+r+a+m+m+i+n+g+i+s+f+u+n"
print("----------------------")
// End of question 7


// 8. A car is traveling at a constant velocity of 20 m/s for 12 seconds.
//Calculate the total distance traveled during this time period using the formula:
//Distance = velocity × time
//Print the result in this format:
//"The car traveled a distance of **** meters."
print("----------------------")
// End of question 8





