import UIKit

//Array 배열 순서가 있는 컬렉션 타입 가장 많이 사용하고 제약이 별로 없음


//Apple Developer
//Array Type Shorthand Syntax (배열 타입의 줄임 구문 표현)
var fruit: Array<String> = ["Banana", "Apple"]
let handphone: [String] = ["iphone", "Galaxy"]
var someCoffe = ["Americano", "Prapucino"]
var someInt = [1, 2, 3, 3, 4, 5, 5, 5, 12]

//Creating an Empty Array (빈 배열 생성하기)
let people: Array<String> = []
var numbers = [Int]()
var anyValue: Any = []

//Creating an Array with a Default Value (기본 값으로 배열 생성하기)
//repeating 메소드로 기본값을 주어주고 카운트로 횟수를 리턴합니다.
var someValue = Array(repeating: "Hello", count: 3)


//Creating an Array by Adding Two Arrays Together (두 배열을 서로 더해서 배열 생성하기)
var plusValue = someValue + fruit

//Accessing and Modifying an Array (배열 접근하기와 수정하기)
//요소의 숫자 카운트
print("The fruit list \(fruit.count) items")
fruit.count
//요소가 있는지 없는지 Bool 값으로 리턴
fruit.isEmpty
if fruit.isEmpty {
    print("Yes, empty Array")
} else {
    print("No, fruit Array have \(fruit)")
}
//Array에 요소 추가하기
fruit.append("Melon")
fruit += ["Barry"]
//Array는 색인 번호를 가집니다. 순서대로 0부터 카운트 합니다
var firstItems = fruit[1]
firstItems

//Array 요소 교환하기
fruit[0] = "peach"
fruit
//한꺼번에 바꾸기
fruit[0...1] = ["Guaba", "Water melon"]
fruit
//지정한 index에 추가하기
fruit.insert("Orange", at: 3)

//지정한 index 삭제하기
fruit.remove(at: 0)
fruit
//최종 항목 삭제
fruit.removeLast()
fruit

//Iterating Over an Array (배열에 동작을 반복시키기) 나열하기
for item in fruit {
    print(item)
}
// Array에 index를 표시하여 나열하기
for (index,item) in fruit.enumerated() {
    print("\(index): \(item)")
}

//Apple Developer
//Array Type Shorthand Syntax (배열 타입의 줄임 구문 표현)
var drink:Array<String> = ["Cola"]
var shoppingList:[String] = ["coffe", "fruit","meet"]
var food = ["pizza", "hamberger"]
//Creating an Empty Array (빈 배열 생성하기)
var People:[Int] = []
var person:Any = []
var i = [String]()
//Creating an Array by Adding Two Arrays Together (두 배열을 서로 더해서 배열 생성하기)
var someShopping = shoppingList + food

//Accessing and Modifying an Array (배열 접근하기와 수정하기)
//요소의 숫자 카운트
someShopping.count
print("My shopping List \(someShopping.count)")
//요소가 있는지 없는지 Bool 값으로 리턴
someShopping.isEmpty

if someShopping.isEmpty {
    print("Yes, is empty")
}else{
print("No")
}
//Array에 요소 추가하기
someShopping.append("sprite")
someShopping += ["Coke"]
//Array는 색인 번호를 가집니다. 순서대로 0부터 카운트 합니다
var someDrink = someShopping[0]
someDrink
//Array 요소 교환하기
someShopping[3] = "chicken"
//한꺼번에 바꾸기
someShopping[1...2] = ["Door", "gum"]
someShopping
//지정한 index에 추가하기
someShopping.insert("drug", at: 1)
//지정한 index 삭제하기
someShopping.remove(at: 1)
someShopping
//최종 항목 삭제
someShopping.removeLast()
someShopping
//Iterating Over an Array (배열에 동작을 반복시키기) 나열하기
for item in someShopping {
    print(item)
}
// Array에 index를 표시하여 나열하기
for (num,value) in someShopping.enumerated() {
    print("\(num) : \(value)")
}

//Creating an Array with a Default Value (기본 값으로 배열 생성하기)
var MyhomeDigine: Array<String> = ["Desk", "Tv"]
//repeating 메소드로 기본값을 주어주고 카운트로 횟수를 리턴합니다.
var someKindnum = Array(repeating: 3, count: 2)

//: [Next](@next)
