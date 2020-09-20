
// Object-Oriented Swift
//1.
class Animal {
    enum Gender {
        case male
        case female
        case undefined
    }
    
    let gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat() {
        print("I eat everything")
    }
        
}


//2.
class Elephant: Animal {
    override func eat() {
    print("I love eating bananas!")
    }
}

class Tiger: Animal {
    override func eat() {
      print("I love eating meat!")
      }
}

class Horse: Animal {
    override func eat() {
    print("I love eating straw!")
    }
}


//3.
class Zoo {
    var weeklyHot: Animal

    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let tiger = Tiger(gender: .female)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .female)

let zoo = Zoo(weeklyHot: Tiger(gender: .female))


zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse


//4. Structure instances are equal if their values are equal, while class instances are unique identities even if their values are equal.


//5. Instance methods are functions that belong to instances of a particular class, structure, or enumeration. Type methods are called on the type itself, rather than on an instance of that type.


//6. Initializer is a special function that we use to prepare instances of a class, structure, or enumeration for use. With the initializer, we can set an initial value for each stored property on the instance.

//7. Every instance of a type has an implicit property called self, which is exactly equivalent to the instance itself, whereas within the body of a type method, the implicit self property refers to the type itself, rather than an instance of that type.

//8. The main difference is that for value types, copying creates an independent instance with its own unique copy of its data. Copying a reference, on the other hand, implicitly creates a shared instance so that after the copy, two variables then refer to a single instance of the data. Therefore, modifying data in the second variable also affects the original.


//------------------------------------------------------------------------
// Enumerations and Optionals in Swift
//1.
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "d"
    
    var getPrice: Int {
        switch self {
        case .oil92:
            return 100
        case .oil95:
            return 200
        case .oil98:
            return 300
        case .diesel:
            return 50
        }
    }
}

Gasoline.oil92.rawValue

// Enumeration cases can specify associated values of any type to be stored along with each different case value, and this lets you attach additional information to your enums so they can represent more data. Associated values are set when you create a new constant or variable based on one of the enumeration’s cases, and can be different each time you do so.


//2.
class Pet {
    var petName: String
    
    init(petName: String) {
        self.petName = petName
    }
}

class People {
    let name: String
    var pet: Pet?
    
    init(name: String) {
        self.name = name
    }
}

// Create a People instance and use ​guard let​ to unwrap the ​pet property
let james = People(name: "James")

guard let petName = james.pet?.petName else {
    fatalError("Optional is nil")
}

// Create another People instance and use ​if let​ to unwrap the ​pet property
let sydney = People(name: "Sydney")

if let petName = sydney.pet?.petName {
    print(petName)
}


//------------------------------------------------------------------------
// Protocol in Swift
//1 & 2 & 4
struct Person: PoliceMan {
    let name: String
    let toolMan: ToolMan
    
    func arrestCriminals() {
        return
    }
}

protocol PoliceMan {
    func arrestCriminals()
}


//3.
protocol ToolMan {
    func fixComputer()
}


//5.
struct Engineer: ToolMan {
    func fixComputer() {
        return
    }
}


//6.
let steven = Person(name: "Steven", toolMan: true as! ToolMan)


//------------------------------------------------------------------------
// Error Handling in Swift

enum GuessNumberGameError: Swift.Error {
    case wrongNumber
}

class GuessNumberGame {
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        
        print("Guess the right number: \(targetNumber)")
    }
}

try GuessNumberGame().guess(number: 20)















