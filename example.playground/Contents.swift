import UIKit

//String Interpolation 문자열 보간법
var name = "jihun"
print("Hello \(name)!")

//variable 변수
var otherName = "hunsu"
otherName = "miho"

//Constants 상수
let unOthetName = "briun"
//unOthetName = "sangho"

//Int
var num: Int = 1
num = -1

//UInt
var uIntNum: UInt = 1
//uIntNum = -1

//Bool
var hungry: Bool = true
hungry = false

//Float, Double
let Float1: Float = 0.23123123123
let Double: Double = 0.23123123123

//character
var litelal: Character = "🐶"
//litelal = "🐵🙉"

//String
var greet: String = "Hello!🦕"
let greetJihun = greet + "  " + name + "!"
greet.count
greet.isEmpty
greet.uppercased()
greet.lowercased()
greet = """
    hello!
    Jihun!
    I'm
    happy
    """

//Any
var any: Any = "juce"
any = 12
any = true

//Type Inference 타입 추론
let aInt = 1
let bString = "dasd"
let cBool = true

//Type Aliases
typealias Number = Int
var num1 :Number = 12

//tuple
var Tuple: (String, Int, Double) = ("jihun", 26, 177.23)
//using index
print("name: \(Tuple.0) age: \(Tuple.1) height \(Tuple.2)")
Tuple.0 = "hunsu"
//tuple name appoint
var Tuple1: (name: String, age: Int, height: Double) = ("Miho", 99, 123.2)
Tuple1.name = "sangho"

//Array 배열
var array: Array<String> = []
var names = ["jihun", "Sangho", "Miho"]
array.isEmpty
names.count
//using index
names[2]
names[0] = "BBib"
names.remove(at: 0)
names.insert("Max", at: 0)
names.removeLast()
names.append("Babo")
names.insert(contentsOf: ["josha", "kakalote"], at: 1)
