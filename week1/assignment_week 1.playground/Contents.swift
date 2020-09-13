//Basic
//Q1
let Pi: Double = 3.14

//Q2
let x: Int = 2
let y: Int = 6
let average = (x+y)/2

//Q3
/*
 1) Change the type of x and y to Double instead of Int
 2) 10/3 = 3, while 10.0/3.0 = 3.3333333333333335. The former is of type Int, while the latter is of type Double
 */

//Q4
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

//Q5
var salary = 22000
salary + 28000

//Q6
//==

//Q7
let c = 10
let d = 3
let remain = 10 % 3

//Q8
//let is used to assign constants, while var is used to assign variables

//Q9
/*
 1. Stay consistent in naming.
 2. Name functions or methods for the values they return.
 3. Add a verb like get, make, or calculate to function names
 */

//Q10
/*
 Type Inference enables a compiler to deduce the type of a particular expression automatically simply by examining the values users provide.
 */

//Q11
// It is not allowed to assign value of type 'String' to type 'Int'.

//----------------------------------------------------------------------

// Collection
//Q1
var myFriends = [String]()

//Q2
myFriends += ["Ian", "Bomi", "Kevin"]

//Q3
myFriends.append("Michael")

//Q4
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

//Q5
for friends in myFriends {
    print(friends)
}

//Q6
//myFriends[5] leads to a fatal error since the index is out of range.

//Q7
//Use the method first

//Q8
//Use the method last

//Q9
var myCountryNumber = [String: Int]()

//Q10
myCountryNumber = ["US":1, "GB":44, "JP":81]

//Q11
myCountryNumber.updateValue(0, forKey: "GB")

//Q12
//var emptyDictionary: [String: Int] = [:]

//Q13
//Use removeValue(forKey: "") OR Dict[ ] = nil

//----------------------------------------------------------------------

// Control Flow
//Q1
var lottoNumbers = [10, 9, 8, 7, 6, 5]
for i in lottoNumbers[3...5] {
    print(i)
}

//Q2
//1) Use the method reversed
let reversedLotto = lottoNumbers.reversed()

for i in reversedLotto {
    print(i)
}

//2) Use the method removeLast and remove
lottoNumbers.removeLast()
lottoNumbers.remove(at: 1)
lottoNumbers.remove(at: 2)

for i in lottoNumbers {
    print(i)
}

//Q3
//1)
var i = 5
while i <= 10 {
    print(i)
    i += 1
}

//2)
var j = 10
while j >= 6 {
    if j == 9 {
        j -= 1
        continue
    }
    if j == 7 {
        j -= 1
        continue
    }
    print(j)
    j -= 1
}

//Q4
//1)
var k = 5
repeat {
    print(k)
    k += 1
} while k <= 10

//2)
var l = 10
repeat {
    if l == 9 {
        l -= 1
        continue
    }
    if l == 7 {
        l -= 1
        continue
    }
    print(l)
    l -= 1
} while l >= 6

//Q5
/*
 While Loops check the condition before running the loop code, whereas Repeat While Loops run the loop code first.
 Repeat-while is used if you want to guarantee the loop runs at least once before checking the condition.
 */

//Q6
var isRaining = true
if isRaining {
    print("It's raining. I don't want to work today.")
} else {
    print("Although it's sunny, I still don't want to work today.")
}

//Q7
var jobLevel = 8

switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Member")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job.")
}

//----------------------------------------------------------------------

//Function
//Q1
func greet(person: String) -> String {
    return "Hello, " + person
}

//Q2
func multiply(a: Int, b: Int = 10) {
    print(a*b)
}

//Q3
//The argument label is used when calling the function. The parameter name is used in the implementation of the function.

//Q4
//String
//Double
