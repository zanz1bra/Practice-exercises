import UIKit

/*Exercise 1: Create a Basic Class
Create a class called Person with properties for name and age. Implement an initializer to set these properties and a method to print out a brief description of the person.
 */

class Person {
    var name = ""
    var age = 0
    
    init(name: String = "", age: Int = 0) {
        self.name = name
        self.age = age
    }
    
    func description() {
        print("My name is \(name) and I'm \(age) old")
    }
}

let person = Person(name: "Erika", age: 33)
person.description()


/*
Exercise 2: Create a Subclass
Create a subclass called Student that inherits from the Person class. Add a property for the student's studentID and an initializer that calls the superclass initializer. Override the description method to include the student's ID.
 */

class Student: Person {
    var studentID: String
    
    init(name: String = "", age: Int = 0, studentID: String) {
        self.studentID = studentID
        super.init(name: name, age: age)
    }
    
    override func description() {
        print("My name is \(name) and I'm \(age) old. My student ID is: \(studentID)")
    }
}

let student = Student(name: "Erika", age: 33, studentID: "et6387")
student.description()

/*
Exercise 3: Create a Hierarchical Inheritance
Create another subclass called Teacher that also inherits from Person. Add a property for the teacher's subject and an initializer that calls the superclass initializer. Override the description method to include the teacher's subject.
 */

class Teacher: Person {
    var subject: String
    
    init(name: String = "", age: Int = 0, subject: String = "") {
        self.subject = subject
        super.init(name: name, age: age)
    }
    
    override func description() {
        print("My name is \(name) and I'm \(age) old. My favorite subject is \(subject)")
    }
}

let teacher = Teacher(name: "erika", age: 33, subject: "physics")
teacher.description()

/*
Exercise 4: Implement a Protocol
Create a protocol called Playable with a method play() that doesn't return anything. Create a class MusicalInstrument that conforms to this protocol. Implement the play() method to print a message like "Playing the instrument."
 */

protocol Playable {
    func play()
}

protocol MusicalInstrument: Playable {
    func play()
}

/*
Exercise 5: Use Multiple Inheritance
Create a class called Musician that inherits from both Person and MusicalInstrument. Implement an initializer that sets the musician's name, age, and the instrument they play. Override the description method to include the instrument they play.
*/

class Musician: Person, MusicalInstrument {

    var instrument: String
    
    init(name: String, age: Int, instrument: String) {
        self.instrument = instrument
        super.init(name: name, age: age)
    }
    
    override func description() {
        print("Musicians name is \(name), she is \(age) years old and plays \(instrument)")
    }
    func play() {
        print("Playing the instrument")
    }
}

let musician = Musician(name: "Erika", age: 33, instrument: "bass guitar")
musician.description()
