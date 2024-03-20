import UIKit

//VARIABLES AND CONSTANTS
//This is a comment
var greeting = "Hello, playground"
greeting = "Hello, Swift"
//Optionclick to see the type
//"Type inference" is when the compiler guesses the type by value
let constGreeting = greeting
//This line causes an exception, because let declares a constant
//constGreeting = "Hello, World"

//SPECIFYING TYPES
var nextYear: Int = 0
var bodyTemp: Float = 0
var hasPet: Bool = true

//COLLECTION TYPES
var arrayOfInts: Array<Int> = []
//shorthand syntax for arrays
var arrayOfStrings: [String] = []
//dictonaries are maps. Keys must be hashable
var dictionaryOfCapitablByCounty: Dictionary<String,String> = [:]
//shorthand syntax for dictionaries
var anotherDictionary: Dictionary<String,String> = [:]
//sets dont have a shorthand syntax
var winningLotteryNumbers: Set<Int> = []

//LITERALS AND SUBSCRIPTING
let number = 42
let fmStation = 91.2
var countingUp = ["one", "two"]
let nameByParkingSpace = [13: "Alice", 27: "Bob"]
let secondElement = countingUp[1]

//INITIALIZERS
let emptyString = String()
let emptyArrayOInts = [Int]()
let emptySetOfFloats = Set<Float>()
let defaultNumer = Int()
let defaultBool = Bool()
let meaningOfLife = String(number)
let availableRooms = Set([205, 411, 412])
let defaultFloat = Float()
let floatFromLiteral = Float(3.14)
//next will default to double
let easyPi = 3.14
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14

//PROPERTIES AND INSTANCE METHODS
countingUp.count
emptyString.isEmpty
countingUp.append("three")

//OPTIONALS
var anOptionalFloat: Float?
var anOptionalArrayOfStrings: [String]?
var anOptionalArrayOfOptionalStrings: [String?]?
//how to get values of optionals
var reading1: Float? = 9.8
var reading2: Float? = 9.2
var reading3: Float? = 9.7
var reading4: Float?
//This throws an error
//let avgReading = (reading1 + reading2 + reading3) / 3
//1. Forced unwrapping
let avgReading = (reading1! + reading2! + reading3!) / 3
//Problem with forced unwrapping (Open View > Debug Area)
//let avgReadingFail = (reading1! + reading2! + reading3! + reading4!) / 4
//2. Optional binding
if let r1 = reading1, let r2 = reading2, let r3 = reading3, let r4 = reading4 {
    let avgReadingBinding = (r1 + r2 + r3 + r4) / 3
    print(avgReadingBinding)
} else {
    let errorString = "Float reported a reading that was nil."
    print(errorString)
}

//SUBSCRIPTING DICTIONARIES
//subscribing an array beyond its bounds causes a trap (Excpetion)
//Dictionaries are different since they return optionals
let space13Assignee: String? = nameByParkingSpace[13]
let space42Assignee: String? = nameByParkingSpace[42]
if let space27Assignee = nameByParkingSpace[27] {
    print(space27Assignee)
}

//LOOPS AND STRING INTERPOLATION
//Swift has all normal control flow statements like:
//if-else, switch, while, repeat-while, for and for-in
let range = 0..<countingUp.count
for i in range {
    print(i)
}
for string in countingUp {
    print(string)
}
for (i, string) in countingUp.enumerated() {
    print(String(i) + " " + string)
}
//This mark up style is swifts string interpolation
for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"
}

//ENUMERATIONS
enum PieType: Int {
    case apple = 0
    case cherry
    case pecan
}
let name: String
let favoritePie = PieType.apple
//switches per default have no fallthrough. It can be specified with the fallthrough keyword
switch favoritePie{
case .apple:
    name = "Appli"
case .cherry:
    name = "Cherry"
case .pecan:
    name = "Pecan"
}
let macOSVersion: Int = 14
switch macOSVersion {
case 0...8:
    print("A big car")
case 9...15:
    print("California locations")
default:
    print("Greetings, people of the future \(macOSVersion)!")
}
let pieRawValue = PieType.pecan.rawValue
if let pieType = PieType(rawValue: pieRawValue){
    print(pieType)
}

//CLOSURES
//closures are a function.like construct without having to give it a name and a full function declaration
let compareAscending = { (i: Int, j: Int) -> Bool in
    return i < j
}
compareAscending(42, 2)
compareAscending(-2, 12)
var numbers = [42, 9, 12, -17]
numbers.sort(by: compareAscending)
numbers.sort( by: {(i: Int, j:Int) -> Bool in
        return i > j
})
//further documentation at developer.apple.com/swift/resources
