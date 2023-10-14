import UIKit

/*
 1. Loop through an Array:
 Write a function that takes an array of integers and prints each element in the array.
 */

func printArray() {
    let myArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    for element in myArray {
        print(element)
    }
}

printArray()

/*
 2. Sum of Array:
 Write a function that calculates the sum of all elements in an array of integers.
 */

func calculateSum() {
    let myArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    var sum = 0
    
    for number in myArray {
        sum += number
    }
    
    print(sum)
}

calculateSum()


/*
 3. Even Numbers:
 Write a function that takes an array of integers and prints all the even numbers in the array.
  */

var myArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]

func printEven() {
    for number in myArray {
        if number % 2 == 0 {
            print(number)
        }
    }
}

printEven()

/*
 4. Dictionary Operations:
 Create a dictionary that represents a person with keys for "name," "age," and "city." Write a function that updates the person's age and city, and then prints the updated dictionary.
 */

var human: [String : String] = [
    "name" : "John",
    "age" : "34",
    "city" : "Riga"
]

func updatingPerson() {
    human.updateValue("35", forKey: "age")
    human.updateValue("Liepaja", forKey: "city")
    
    for (key, value) in human {
        print("\(key) = \(value)")
    }
}

updatingPerson()

/*
 5. Temperature Conversion:
 Write a function that converts a temperature from Celsius to Fahrenheit. The formula is: F = (C * 9/5) + 32.
 */

var celsius = 34.5

func convertTemp() {
    var fahrenheit = (celsius * 9/5) + 32
    print(fahrenheit)
}

convertTemp()

/*
 6. Factorial Calculation:
 Write a function that calculates the factorial of a given positive integer.
 */

var number = 9

func calculateFactorial() {
    var factorial = 1
    
    for i in 1...number {
        factorial *= i
    }
    
    print(factorial)
}

calculateFactorial()

/*
 7. FizzBuzz:
 Write a program that prints the numbers from 1 to 100. For multiples of 3, print "Fizz" instead of the number. For multiples of 5, print "Buzz" instead of the number. For numbers which are multiples of both 3 and 5, print "FizzBuzz."
 */

for number in 1...100 {
    switch (number % 3, number % 5) {
    case(0, 0):
        print("FizzBuzz")
    case(0, _):
        print("Fizz")
    case (_, 0):
        print("Buzz")
    default:
        print(number)
    }
}

/*
 8. Odd or Even:
 Write a function that takes an integer as input and prints whether it's odd or even.
 */

var isEven: Int = Int.random(in: 0...20)

func checkIfEven() {
    switch (isEven % 2 == 0){
    case(true):
        print("The number is even!")
    default:
        print("This number is not even")
    }
}

checkIfEven()

/*
 9. Palindrome Check:
 Write a function that checks if a given string is a palindrome (reads the same backward as forward).
 */

var myString = "Is this a palindrome?"

func checkIfPalindrome() {
    let reversedString = String(myString.reversed())
    if myString == reversedString {
        print("This is a palindrome!")
    } else {
        print("This string is NOT a palindrome")
    }
}

checkIfPalindrome()

/*
 10. Maximum Element:
 Write a function that finds and returns the maximum element in an array of integers.
 */

var littleArray: [Int] = [23, 8, 975, 9273, 52, 56, 23, 968, 23]

func checkArray() {
    if let largest = littleArray.max() {
        print(largest)
    } else {
        print("This array is empty")
    }
}

checkArray()

/*
 11. Leap Year:
 Write a function that determines whether a given year is a leap year. Leap years are divisible by 4 but not divisible by 100 unless they are divisible by 400.
 */

var year = 2024

func checkIfLeapYear() {
    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
        print("This is a leap year")
    } else {
        print("This is not a leap year")
    }
}

checkIfLeapYear()

/*
 12. Positive/Negative/Zero:
 Write a function that takes an integer and prints whether it's positive, negative, or zero.
 */

var x = Int.random(in: -30...30)

func checkIfPositive() {
    if x == 0 {
        print("The number is zero")
    } else if x > 0 {
        print("The number ir positive")
    } else {
        print("The number is negative")
    }
}

checkIfPositive()
