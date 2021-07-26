
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
