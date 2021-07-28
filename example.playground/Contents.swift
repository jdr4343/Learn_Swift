import UIKit
//Swift easy example











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
names.shuffle()
names.randomElement()

//Dictionary 딕셔너리 키와 값이 쌍을 이루는 형식
var dict: Dictionary<String, Int> = [:]
var dict1: [String: Int] = [:]
var classMember = [3: "jihun", 4: "munghun", 12: "pinky"]
print(classMember[3]!)
classMember[5] = "manggo"

//Set 세트
let emptySet:Set<String> = []
var fruit: Set<String> = ["manggo", "apple", "melon"]
fruit.count
fruit.insert("water melon")
fruit.remove("melon")

//enum 열거형
//not appennd And change
enum School {
    case primary
    case elementary
    case middle
    case high
    case college
    case university
    case graduate
}
//you can make enum one raw ex) case primary, elementary, middle, high
var highestEducationLevel: School = .university
highestEducationLevel = .graduate
enum shoppingList: String {
    case Apple = "1doller"
    case meat = "3doller"
}
//you can use rawValue...
print("meat price \(shoppingList.meat.rawValue)")
let apple = shoppingList(rawValue: "1doller")
// attribute-value
enum maindish {
    case bulgogi(taste: String)
    case pakimchi(ingredient: String)
    case muguk(withSalt: Bool)
    case rice
}
var dinner: maindish = maindish.bulgogi(taste: "sweet")
dinner = .pakimchi(ingredient: "greenOnion")
dinner = .muguk(withSalt: true)
dinner = .rice
//limit value
enum pasta: CaseIterable {
    case cream, tomato
}
enum pizzaDough: CaseIterable {
    case cheseCrust, thin, original
}
enum pizzaTopping: CaseIterable {
    case peperoni, cheese, bacon, meat
}
enum mainDish {
    case pasta(taste: pasta)
    case pizza(dough: pizzaDough, topping: pizzaTopping)
    case chiken(withSauce: Bool)
    case rice
    
}
var dinner1 = mainDish.pasta(taste: pasta.cream)
dinner1 = .pizza(dough: pizzaDough.thin, topping: pizzaTopping.cheese)
dinner1 = .chiken(withSauce: true)
dinner1 = .rice
//CaseIterable protocol And allcases
enum exSchool: CaseIterable {
    case primary
    case elementary
    case middle
    case high
    case college
    case university
    case graduate
}
let allcases: [exSchool] = exSchool.allCases
//indirect: When the associated value is at its own value
indirect enum ciga {
    case malboru(String)
    case mildeSeven(Int)
}
ciga.malboru("taste Good")
ciga.mildeSeven(20)
//Comparable Protocol: enum compare. The case in front of you will be a smaller value.
enum Condition: Comparable {
    case terrible
    case bad
    case good
    case great
}
let myCondition: Condition = Condition.great
let yourCondition: Condition = Condition.bad

if myCondition >= yourCondition {
    print("I'm in better shape.")
} else {
    print("You're in better shape")
}

//Basic Operators
//Assignment Operator 할당 연산자
let a = 1

//Arithmetic Operators 산술 연산자
var i = 1 + 1
i = 1 - 1
i = 3 * 3
i = 2 / 1
i = 3 % 1
let q = 3, w = 5, e = 12, r = 3

//Comparison Operators 비교 연산자
q > w
q < w
q == r
q >= e
q <= r
q != r

//Reference Operators 참조 연산자
class Someclass {
    
}
let referenceA: Someclass = Someclass()
let referenceB: Someclass = Someclass()
let referenceC: Someclass = referenceA
let isSameReferenceAB: Bool = referenceA === referenceB
let isSameReferenceAC: Bool = referenceA === referenceC
let notEqualReferenceAC: Bool = referenceA !== referenceC

//Ternary Conditional Operator 삼항 연산자
//if true left /false right
q > w ? e : r

//Range Operators 범위 연산자
1...3
1..<3
1...
...1
..<q

//Logical Operators 부울연산자
if !(q > w) {
    print("! Operator is bool Value reversal")
} else if q > w && q == r {
    print("&& Operator is action when all value is true ")
} else if q > w || q == r {
    print("|| Operator is action when one value is true")
}
