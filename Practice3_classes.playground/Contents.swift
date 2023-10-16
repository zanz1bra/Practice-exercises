import UIKit

/*
 Exercise 1: Creating a Simple Inheritance Hierarchy

 Create two classes: Vehicle and Car. Vehicle should be the base class, and Car should be a subclass of Vehicle.

 Vehicle should have the following properties:
 brand (String)
 year (Int)
 description (String) - A computed property that returns a description of the vehicle in the format "A [year] [brand]."
 Car should have an additional property:
 isConvertible (Bool)
 Now, create instances of both the Vehicle and Car classes and demonstrate inheritance by accessing properties and methods from both classes.
 */

class Vehicle {
    var brand: String
    var year: Int
    
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
    
    func describeMyCar() {
        print("A \(year) \(brand)")
    }
}

let myCar = Vehicle(brand: "Volvo", year: 2020)
myCar.describeMyCar()


class Car: Vehicle {
    var isConvertible: Bool
    
    init(brand: String, year: Int, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(brand: brand, year: year)
    }
    
    override func describeMyCar() {
        print("A \(year) \(brand). And is it a convertible? \(isConvertible)")
    }
}

let myCar2 = Car(brand: "Volvo", year: 2020, isConvertible: true)
myCar2.describeMyCar()

/*Exercise 2: Method Overriding
 
 In this exercise, you will create a base class Shape and two subclasses Circle and Rectangle. The Shape class should have a method called area() which returns 0. The Circle and Rectangle subclasses should override the area() method to compute the area of a circle and a rectangle, respectively.

 Create a base class Shape with a method area() that returns 0.
 Create a subclass Circle of Shape with properties:
 radius (Double)
 Override the area() method to calculate and return the area of a circle.
 Create a subclass Rectangle of Shape with properties:
 width (Double)
 height (Double)
 Override the area() method to calculate and return the area of a rectangle.
 Create instances of the Circle and Rectangle classes, set their properties, and calculate their areas using the overridden area() method.
*/

class Shape {
    func calculateArea() -> Double {
        return 0.0
    }
}

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    override func calculateArea() -> Double {
        return 3.14 * pow(radius, 2)
    }
}

var radius = Circle(radius: 5.6)
radius.calculateArea()

class Rectangle: Shape {
    var height: Double
    var width: Double
    
    init(height: Double, width: Double) {
        self.height = height
        self.width = width
    }
    
    override func calculateArea() -> Double {
        return height * width
    }
}

var area = Rectangle(height: 3, width: 4)
area.calculateArea()
