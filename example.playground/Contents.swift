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

//Controll flow 흐름제어
//if
let rowValue = 0
let highValue = 10
let equalValue = 10

if rowValue > highValue {
    print("rowValue is high")
} else if highValue == equalValue {
    print("highValue and rowValue is equalValue")
} else {
    print("All wrong")
}

//switch
switch highValue {
case 3:
    print("NO")
case 3...7:
    print("no")
case (5 + 5):
    print("true")
    fallthrough
default:
    print("fallthrough is next case execute")
    print("default == else")
    
}

let stringTupleValue: (name: String, age: Int) = ("Jihun", 26)
switch stringTupleValue {
case ("hunsu", 23):
    print("NO")
case ("Jihun", _):
    print("Only the name was corrct")
case (_, 26):
    print("Only the age was corrct")
default:
    break
    
}

let animal = "Dog"
let age = 1
let cute = true

switch animal {
case "Dog" where cute == true:
    print("Yeah, puppies are cute. Cute saves the world.")
case "Dog" where age > 2:
    print("No")
case "Dog" where age > 11 && cute == false:
    print("No way. Dogs get cuter with age.")
default:
    break
}

enum Menu {
    case chiken, hamburger, bulgogi, kimchi
}
let lunchMenu: Menu = .kimchi
switch lunchMenu {
case .chiken:
    print("Umm tasty good")
case .hamburger:
    print("hell yeah")
case .bulgogi:
    print("I'm full")
@unknown case _:
    print("If all values have been processed, default blocks are not required. However, it is recommended that you add @unknown later because adding new values to the enum can cause logical errors.")
}

//Repetitive statements
//for in
for _ in 1...3 {
    print("anything")
}

for i in 0...5 {
    if i.isMultiple(of: 2) {
        print(i)
        continue
    }
    print("\(i) == Odd Number\nThe Continue keyword immediately skips to the next sequence.")
}

//while
var whilename = ["minsu", "nani", "unjong"]
while whilename.isEmpty == false {
    print("nani ♥️ \(whilename.remove(at: 0))")
}

var num3 = 100
while num3 < 100 {
    num3 += 1
}
num3
//repeat while
whilename = ["minsu", "nani", "unjong"]
repeat {
    print("nani ♥️ \(whilename.remove(at: 0))")
}while whilename.isEmpty == false

num3 = 100
repeat {
    num3 += 1
    
}while num3 < 100
num3

//funtion
//The funtion And method are the same by default
func greet1() {
    print("hello")
}
greet1()
func comparison() {
    if a == q {
        print("equal")
    } else {
        print("NO")
    }
}
comparison()
func introduce(name: String, age: Int) -> String {
    "My name is \(name) and \(age)."
}
introduce(name: "jihun",age: 26)

//Use argumentLable
func sayHello(to name: String, from myname: String) -> String {
    "Hello \(name) my name is \(myname)"
    
}
sayHello(to: "jihun", from: "miho")

//you can omit it. and two funtion have equal name. The reason for that is because the Agyumen label is different.
func sayHello(_ name: String, _ myname: String...) -> String {
    "Hello \(name) my name is \(myname)"
    
}
print(sayHello("jihun", "miho", "지훈"))

func plusValue(to a: Int = 3, from b: Int = 4) {
    print(a + b)
}
plusValue()
plusValue(to: 1)
plusValue(to: 12, from: 32)
//Funtion Types
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
// == (Int, Int) -> Int
func printgreet() {
print("hello")
}
// == Void
var mathFuntion = addTwoInts
mathFuntion(3, 4)

//Optional
var Interjection: String? = "HOwwow!"
var nameJigu: String? = "jigu"
print(Interjection)
//Forced Unwrapping /Danger
var myInterjection: String = Interjection!
//safety
if Interjection != nil {
   print(Interjection!)
} else {
    print("This value is nil")
}

//Optional Binding
if let Howow = Interjection,let Jajigu = nameJigu {
    print(Howow,Jajigu)
} else {
    print("nil")
}

//Implicitly Unwrapped Optional
var myname2: String! = "yagom"
print(myname2)
myname2 = nil

if let name = myname2 {
    print("my name is \(name)")
} else {
    print("myName == nil")
}
//myname2.isEmpty
