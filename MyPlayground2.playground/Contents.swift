import UIKit

var greeting = "Hello, playground"


struct Person{
    var name: String
    
    func sayHello() {
        print("Hello! \(name), how are you")
    }
}


let person = Person(name: "Malik")

print(person.name)
person.sayHello()
      
struct Shirt{
    var size: String
    var color: String
}

let s1 = Shirt(size: "M", color: "Black")
let s2 = Shirt(size: "L", color: "Blue")

print(s1.size, s1.color)
print("Second shirt size is: \(s2.size) & its color is: \(s2.color)")

struct Personal{
    var name: String
    var age: Int
    var address: String
    var mobile: Int
    var email: String
    
    func sayInfo(){
        print("Hi! My name is \(name), I am \(age) years old. You can contact me with this credentiials: Address \(address), mobile: \(mobile) & email me at \(email). Thank you!")
    }
}

let P1 = Personal(name: "Malik", age: 21, address: "Times Colony", mobile: 9665415026, email: "sdmalikwork01@gmail.com")

P1.sayInfo()


struct Temperature {
    var celsius: Double
    
    init(celsius: Double) {
        self.celsius = celsius
    }
    
    init(fahrenheit: Double){
        celsius = (fahrenheit - 32) / 1.8
    }
}

let currentTemp = Temperature(celsius: 18.5)
let boiling = Temperature(fahrenheit: 212.0)

print(currentTemp.celsius)
print(boiling.celsius)


class Vehicle {
    var currentSpeed = 0.8
    
    var description: String{
        "travelling at \(currentSpeed) miles per hour!"
    }
    
    func MakeNoice(){
        // Nothing just an emty function for provision
    }
}

let someVehicle = Vehicle()
print("Vehicle \(someVehicle.description)")

class Bicyle: Vehicle{
    var hasBasket = false
}

let bicyle = Bicyle()
bicyle.hasBasket = true

bicyle.currentSpeed = 10.0
print("Bicyle: \(bicyle.description)")


class Tandom: Bicyle{
    var currentNumberOfPassengers = 0
}

let tandom = Tandom()
tandom.hasBasket = true
tandom.currentNumberOfPassengers = 2
tandom.currentSpeed = 12.0
print(tandom.description)


class Train: Vehicle{
    override func MakeNoice() {
        print("Choo! Choo! Choo! Choo!")
    }
}

let train = Train()
train.MakeNoice()



