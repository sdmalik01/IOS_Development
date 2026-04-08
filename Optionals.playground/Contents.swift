import UIKit

var greeting = "Hello, playground"

struct Books {
    let title: String
    let PublicationYear: Int?
}


let book1 = Books(title: "TwinLight", PublicationYear: 1990)
let book2 = Books(title: "Wings", PublicationYear: 2005)
let unannoucedBook = Books(title: "TheCursedChild", PublicationYear: nil)

var Book = [book1,book2,unannoucedBook]


struct Person{
    let firstName: String
    let middleName: String?
    let lastName: String
}

let P1 = Person(firstName: "Sayyad Malik", middleName: nil, lastName: "Sayyad Muktar")
let P2 = Person(firstName: "Shreya", middleName: "Eknath", lastName: "Jhantre")

var Persons = [P1,P2]

for i in Persons{
    print(i)
}

// Use of if statement in checking wheather an entity is set as optional or not!

struct StoryBook {
    let Name: String
    let PublishYear: Int?
}

var B1 = StoryBook(Name: "Harry Potter: The Sorcerer's Stone", PublishYear: 2000)
var B2 = StoryBook(Name: "Harry Potter: The Chamber of secrets", PublishYear: 2005)
var B3 = StoryBook(Name: "Harry Potter: The Cursed Child", PublishYear: nil)

 
var StoryBooks = [B1,B2,B3]

for i in StoryBooks{
    if i.PublishYear != nil{
        print("The book is titled: \(i.Name) & its was published in \(i.PublishYear!)")
    }
    else {
        print("The book titled \(i.Name) is not published yet!")
    }
}



//optional Chaining

struct People{
    let Name: String
    var residence: Residence?
}

struct Residence{
    var address: Address?
}

struct Address{
    var buildingName: String
    var streetName: String
    var apartmentNumber: Int?
}


let adress1 = Address(buildingName: "Mannat", streetName: "Times Colony", apartmentNumber: 2)
let residence1 = Residence(address: adress1)
let person1 = People(Name: "Malik", residence: residence1)


if let apartmentNumber = person1.residence?.address?.apartmentNumber{
    print("Apartment Number is \(apartmentNumber)")
} else {
        print("Amit residence do not have apartment number!")
}



// CONSTANT AND VARIABLE SCOPE

var globalVariable = true

if globalVariable {
    let localVariable = 7
    print(localVariable)
    print(globalVariable)
}

print(globalVariable)



// One more example of scope for contant and varibale

var age = 55
@MainActor func printMyAge() {
    print("My age: \(age)")
}

print(age)
printMyAge()


func printBottleCount(){
    let bottleCount = 99
    print(bottleCount)
}

printBottleCount()


// Variable Shadowing!

func printComplexScope(){
    let points = 100
    print(points)
    
    
    for index in 1...3{
        let points = 200
        print("Loop \(index): \(points+index)")
    }
    print(points)
}


print(printComplexScope())






























