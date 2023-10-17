import UIKit

/*
 Exercise 1: Enum
 Create an enum called "DayOfWeek" that represents the days of the week (e.g., Monday, Tuesday, etc.). Write a function that takes a "DayOfWeek" enum value as input and returns a string indicating whether it's a weekday or a weekend day.
 */

enum DayOfWeek {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

func dayType(day: DayOfWeek)  {
    switch day {
    case .monday:
        print("It's weekday")
    case .tuesday:
        print("It's weekday")
    case .wednesday:
        print("It's weekday")
    case .thursday:
        print("It's weekday")
    case .friday:
        print("It's weekday")
    case .saturday:
        print("It's weekend!")
    case .sunday:
        print("It's weekend!")
    }
}

dayType(day: .saturday)

/*
 Exercise 2: Struct
 Create a struct called "Rectangle" with properties for its width and height. Write a method that calculates the area of the rectangle and another method that calculates its perimeter.
 */

struct Rectangle {
    var width: Double
    var height: Double
    
    func calculateArea() {
        var area: Double = width * height
        print("The area of rectangle is \(area)")
    }
    
    func calculatePerimeter() {
        var perimeter: Double = 2 * (width + height)
        print("The perimeter of rectangle is \(perimeter)")
    }
}

var rectangle = Rectangle(width: 3.4, height: 2.5)
rectangle.calculateArea()
rectangle.calculatePerimeter()

/*
 Exercise 3: Class
 Create a class called "Person" with properties for a person's name and age. Implement a custom initializer, and a method to introduce the person (e.g., "Hi, my name is [name] and I am [age] years old").
 */

class Person {
    var name: String = ""
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func introducePerson() {
        print("Hi, my name is \(name) and I'm \(age) years old")
    }
}

var human = Person(name: "Erika", age: 33)
human.introducePerson()

/*
 Exercise 4: Class Inheritance
 Create a subclass of "Person" called "Student" with an additional property for the student's major. Implement a custom initializer for the student class, and override the introduction method to include the major.
 */

class Student: Person {
    var major: String
    
    init(major: String) {
        self.major = major
        super.init(name: "Erika", age: 33)
    }
    
    override func introducePerson() {
        print("Hi, my name is \(name) and I'm \(age) years old. My major is \(major)")
    }
}

var myHuman = Student(major: "programming")
myHuman.introducePerson()

/*
 Exercise 5: Loops
 Write a Swift program that uses a loop to print the first 10 Fibonacci numbers. You can start with 0 and 1, and each subsequent number in the sequence is the sum of the two preceding ones (e.g., 0, 1, 1, 2, 3, 5, 8, 13, 21, 34).
 */

var a = 0
var b = 1

for _ in 1...10 {
    print(a)
    
    let number = a + b
    
    a = b
    b = number
}
