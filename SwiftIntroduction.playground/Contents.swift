//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var dictTest: Bool

var dict = [
    "firstName": "Peter",
    "lastName": "Roth",
]

var memberFirst = ["Merlyn", "Ameer", "Henock", "Ryan", "Robert", "Ian", "Matt", "Joba", "Jabari"]
var memberLast = ["Wood", "Vann", "Sileshi", "Dunn", "Ontenient", "Simpson", "Champion", "Boring", "Manwa"]


//use _ in place of name for iteration when iteration doesn't have to be tracked
//this is the half open range operator. syntax is ..<
//for name in 0..<memberFirst.count {
// print("\(memberFirst[name]) \(memberLast[name])")
//}

//reminder: swift uses += and -= for incrementing, ++ is native to javascript
//for i in 1...3 {
//    print(i)
//}

//

let switchTest = 5
//passing in var switchTest as the argument for the switch case
//for switches in swift - ranges can also be passed
switch switchTest {
case 0...2:
    print("Cero")
    break
case 3...5:
    print("En")
    break
case 6...9:
    print("Deux")
    break
default:
    print("Nani")
    break
}

func favoriteKanye(album: String){
    print("My favorite Kanye album is \(album)")
}

//the syntax of calling a function looks like this. it's quite similar to a key-value pair so get used to seeing it.
favoriteKanye(album: "Graduation")

//external and internal names. using swift's _ makes it so an external name for a parameter isn't set. like this.

func UnderscoreDemo (_ name: String) {
    print("Kovacs had a name - It was \(name)")
}

UnderscoreDemo("Rorschach")

//use external names to make your code more legible and concise. external parameters are used before the parameter. in this example, the word "in" is the external parameter name.

func howManyWheels(on bus: Int){
    print("The Magic School Bus extended! It has \(bus) wheels now!")
}

howManyWheels(on: 10)
//when calling a function with an external name, use the external name in the argument and set it equal to the value - not the parameter name!

var drakeAlbum = "More Life"

//This function is set to have a return value. the -> after the parameter parens, followed by the value, ensures that the swift function will
//always return a value. In this case, it will return a Boolean.
func favoriteDrakeAlbum() -> Bool{
    switch drakeAlbum{
    case "Take Care":
        return true
    default:
        return false
    }
}

favoriteDrakeAlbum()


//Of course - there's an exception to this rule though. If the type of return is set to an optional - the return value won't always return a string, boolean, int, etc.
//In some instances, it'll return nil - aka no value
//Set the return type to an optional by placing ? after the return type

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
        //generally, nil values aren't great to use - as they will
        //most likely break your code.
        //a way you can use a nil value without causing a disaster is by doing this. follow the comment below.
    } else {
        return "Hate"
    }
}

//Create an optional variable and set it equal to the result of the function. that way, if the result is nil, your code shouldn't break.
//The reason why this fixes the issue is because "nil" will be returned as a string, instead of as no value and causing a code break.
//Note: Type annotation can be used, and breakTest can be initialized as an optional, like
//var breaktest: String?
//But this isn't necessary. Swift's type inference will automatically create the variable and set it equal to an optional.
var breakTest = getHaterStatus(weather: "sunny")
//This is one option though. It doesn't always have to be done. There's a more efficient way, known as optional unwrapping.
var unwrapTest: String?
unwrapTest = "Optional Word"

func unwrapOption(){
    //The purpose of the if let statement.
    //The if let statement creates a new variable - setting it equal to the value of the optional.
    //The new variable is used to check if the optional has a value - and if so, treats the optional as a value and unwraps it, creating a non-optional string
    //another method that can be used is checking to see if the optional is !== nil
    //if let unwrap = unwrapTeset can also be used here but
    if unwrapTest != nil {
        print ("This worked!")
    }
}
unwrapOption()

//! is used to force wrap optionals - if you're certain that the optional will have a value. otherwise - your code will crash.
//when using type annotation - you can force an optional to be implicitly unwrapped. this is done by adding an exclamation point to the end of the type, such as
//var name: String!
//Swift will infer that this optional will definitely contain a value. If you're incorrect - your code will crash. Use this carefully!


//Optional Chaining allows you to run code - only if your optional has a value. it can be used to pass functions, methods, etc. Here's an example

func optionalChain() -> String? {
    return "Wow this code's simple"
}

//the ? after calling the optionalChain() function checks if the optional has a value before it uses the uppercased method.
//You can add as many chains as you like. The chain will continue to be evaluated, from left to right, until the ? reaches a nil value

var chainedOptional = optionalChain()?.uppercased()

//The nil coalescing operator functions similar to a default.
//The operator evaluates an invoked function and if the argument passed returns as nil, then the value passed after the nil coalescing operator(??) will be used. Think of the nil coalescing operator as a failsafe.
//for example:

//Note: You can use the parameter of a func in a switch you dummy! Don't forget that aha.
func nilTest(name: String) -> String? {
    switch name {
    case "Ameer Vann":
        return "I'm the black Tom Hanks"
    case "Merlyn Wood":
        return "If I had an option, I would do it all again!"
    case "Dom Mclennon":
        return "Chris Paul I'm assistin, Ameer go Blake Griffin!"
    default:
        return nil
    }
}
//Because the argument passed is a default, and a default returns a nil - the value after the nil coalescing operator is the value that is executed
var runNilTest = nilTest(name: "Matt Champion") ?? "Skinny boy skinny boy where ya muscles at?"



//Enumerators allow you to define a new data type - which functions as a  container for values - which allows you to set possible values that can be repurposed within an application.
//Enumerators are often used because behind the scenes - they're basically simple numbers - which allows for computation with them to be really fast.

enum squadUnits {
    case alpha
    case bravo
    case charlie
    case delta
    case eddie
    case franklin
}
//Enums can be used in two different ways; Here's the first example.
func yourSquad (is squad: squadUnits) -> String {
    switch squad {
    case squadUnits.alpha, squadUnits.bravo, sqadUnits.charlie:
        return "You're in the first battallion!"
        break
    case squadUnits.delta, eddie, franklin:
        return "You're in the trenches!"
        break
    default:
        return "Dishonorable discharge - maggot!"
        break
    }
}

