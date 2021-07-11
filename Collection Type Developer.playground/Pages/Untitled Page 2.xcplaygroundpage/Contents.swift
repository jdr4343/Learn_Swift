//: [Previous](@previous)

import Foundation


//set은 순서가 없는 컬렉션 타입 항목의 순서가 중요하지 않을 때나, 항목이 한 번만 나타나도록 보장해야 할 때에, 배열 대신 사용할 수 있다.
//셋’ 에 저장하는 타입은 반드시 해시 가능 (hashable) 해야 합니다.


//Set Type Syntax (셋 타입 구문 표현)
var someSet = Set<Int>()
print("\(someSet.count)")

//Creating a Set with an Array Literal (배열 글자 값으로 셋 생성하기)
var shoppingList: Set<String> = ["meet", "cale", "cookies"]
//set 추론
var myFavoritnum: Set = [1, 2, 3, 4]

//Accessing and Modifying a Set (셋 접근하기와 수정하기)

//‘셋’ 의 항목 개수를 알아 내려면, 읽기-전용 속성인 count 를 검사합니다
shoppingList.count

//‘불리언’ 속성 isEmpty 는 count 속성이 0 인지 검사하는 것의 ‘줄임말’ 로써 사용합니다[11]
shoppingList.isEmpty

if shoppingList.isEmpty {
print("is empty")
} else {
    print("No")
}

//insert(_:) 메소드를 호출하여 ‘셋’ 에 새로운 항목을 추가할 수 있습니다
shoppingList.insert("handphone")
shoppingList

//셋’ 의 remove(_:) 메소드를 호출하여 셋에 있는 항목을 삭제할 수 있는데, 이는 그 항목이 셋의 멤버라면 이를 삭제하고, 삭제한 값을 반환하지만, ‘셋’ 이 이를 담고 있지 않은 경우 nil 을 반환합니다. 또 다른 방법으로는, removeAll() 메소드로 ‘셋’ 에 있는 모든 항목을 삭제할 수 있습니다

shoppingList.remove("cale")
shoppingList

if let removeShopping = shoppingList.remove("cookies") {
    print("\(removeShopping)? yes, I'm over that")
} else {
print("NO")
}
//셋이 특정 항목을 담고 있는 지를 검사하려면, contains(_:) 메소드를 사용합니다.
shoppingList.contains("meet")

if shoppingList.contains("meet") {
    print("Yes, i'm going to buy meet")
} else {
    print("No")
}

//Iterating Over a Set (셋에 동작을 반복시키기)

for item in shoppingList {
    print("\(item)")
}

//스위프트의 Set 타입은 ‘정의된 순서 (defined ordering)’ 를 가지고 있지 않습니다. 지정된 순서로 셋의 값들에 동작을 반복시키려면, ‘셋’ 의 원소를 < 연산자로 ‘정렬된 배열’ 로써 반환하는, sorted() 메소드를 사용합니다.
shoppingList.sorted()

//intersection(_:)21 메소드는 두 집합에 공통인 값만으로 새 집합을 생성하기 위해 사용합니다.
//symmetricDifference(_:)22 메소드는 각 집합에는 있지만, 동시에 있지는 않은 값으로 새 집합을 생성하기 위해 사용합니다.
//union(_:) : 메소드는 두 집합에 있는 모든 값으로 새 집합을 생성하기 위해 사용합니다.
//subtracting(_:)메소드는 지정한 집합에는 없는 값으로 새 집합을 생성하기 위해 사용합니다.

let a: Set = [1, 2, 3, 4, 5, 12]
let b: Set = [2, 32, 4, 1]
let c: Set = [5, 12, 32, 54, 43]
let d: Set = [1, 2]

a.intersection(b).sorted()
a.symmetricDifference(b).sorted()
a.union(c).sorted()
c.subtracting(a).sorted()

//Set Membership and Equality (집합의 포함관계 및 같음 비교)
//“같음 (is equal)” 연산자 (==) 는 두 집합이 모두 같은 값을 담고 있는지 결정하기 위해 사용합니다.
//isSubset(of:) 메소드는 집합의 모든 값이 지정된 집합에 담겨 있는지 결정하기 위해 사용합니다.
//isSuperset(of:) 메소드는 집합이 지정한 집합에 있는 값을 모두 담고 있는지 결정하기 위해 사용합니다.
//isStrictSubset(of:) 또는 isStrictSuperset(of:) 메소드는 집합이, 지정된 집합의, ‘진 하위 집합 (진 부분 집합)’ 또는 ‘진 상위 집합’ 인지 결정하기 위해 사용합니다.
//isDisjoint(with:) 메소드는 두 집합에 공통인 값이 없는지 결정하기 위해 사용합니다.

d.isSubset(of: a)//d의 모든 값이 a에 포함되어 있습니까?
a.isSuperset(of: d)//a의 set안에 b의 모든 값이 포함되어 있습니까?
d.isStrictSubset(of: a)// 같은 값이
d.isDisjoint(with: c)//d와 c의 값은 같지 않습니까?



//자체 구문

//Set Type Syntax (셋 타입 구문 표현)
var somedrink = Set<String>()
//Creating a Set with an Array Literal (배열 글자 값으로 셋 생성하기)
var food: Set<String> = ["Pasta", "Stake", "Noodle"]
//set 추론
var drink: Set = ["Coke", "Sprite"]
var num: Set = [1, 2]
//Accessing and Modifying a Set (셋 접근하기와 수정하기)
//‘셋’ 의 항목 개수를 알아 내려면, 읽기-전용 속성인 count 를 검사합니다
food.count
print("My favorite number is \(food.count)")
//‘불리언’ 속성 isEmpty 는 count 속성이 0 인지 검사하는 것의 ‘줄임말’ 로써 사용합니다
food.isEmpty
if food.isEmpty {
    print("Oh, no i'm fire")
} else {
    print("Hmm..i'm happy")
}

//insert(_:) 메소드를 호출하여 ‘셋’ 에 새로운 항목을 추가할 수 있습니다
food.insert("Kimchi")
food

//셋’ 의 remove(_:) 메소드를 호출하여 셋에 있는 항목을 삭제할 수 있는데, 이는 그 항목이 셋의 멤버라면 이를 삭제하고, 삭제한 값을 반환하지만, ‘셋’ 이 이를 담고 있지 않은 경우 nil 을 반환합니다. 또 다른 방법으로는, removeAll() 메소드로 ‘셋’ 에 있는 모든 항목을 삭제할 수 있습니다
food.remove("Stake")
food
//셋이 특정 항목을 담고 있는 지를 검사하려면, contains(_:) 메소드를 사용합니다.
food.contains("Stake")

//Iterating Over a Set (셋에 동작을 반복시키기)
for foodlist in food {
    print("\(foodlist)")
}


//스위프트의 Set 타입은 ‘정의된 순서 (defined ordering)’ 를 가지고 있지 않습니다. 지정된 순서로 셋의 값들에 동작을 반복시키려면, ‘셋’ 의 원소를 < 연산자로 ‘정렬된 배열’ 로써 반환하는, sorted() 메소드를 사용합니다.
food.sorted()
num.sorted()
//intersection(_:) 메소드는 두 집합에 공통인 값만으로 새 집합을 생성하기 위해 사용합니다.
//symmetricDifference(_:)22 메소드는 각 집합에는 있지만, 동시에 있지는 않은 값으로 새 집합을 생성하기 위해 사용합니다.
//union(_:) : 메소드는 두 집합에 있는 모든 값으로 새 집합을 생성하기 위해 사용합니다.
//subtracting(_:)메소드는 지정한 집합에는 없는 값으로 새 집합을 생성하기 위해 사용합니다.
var EmojiA: Set = ["😏", "🤪", "😘", "🤩", "☺️", "😆"]
var EmojiB: Set = ["😁", "😙", "😎", "🤪", "🥰", "☺️"]
var EmojiC: Set = ["😆", "☺️", "😘"]

EmojiA.intersection(EmojiB)//공통된 값
EmojiA.symmetricDifference(EmojiB)// 동시에 있지 않은값
EmojiB.union(EmojiC)//두개의 set을 더한다
EmojiA.subtracting(EmojiC)// EmojiA에서 EmojiB를 빼고 남은값

//Set Membership and Equality (집합의 포함관계 및 같음 비교)
//“같음 (is equal)” 연산자 (==) 는 두 집합이 모두 같은 값을 담고 있는지 결정하기 위해 사용합니다.
//isSubset(of:) 메소드는 집합의 모든 값이 지정된 집합에 담겨 있는지 결정하기 위해 사용합니다.
//isSuperset(of:) 메소드는 집합이 지정한 집합에 있는 값을 모두 담고 있는지 결정하기 위해 사용합니다.
//isStrictSubset(of:) 또는 isStrictSuperset(of:) 메소드는 집합이, 지정된 집합의, ‘진 하위 집합 (진 부분 집합)’ 또는 ‘진 상위 집합’ 인지 결정하기 위해 사용합니다.
//isDisjoint(with:) 메소드는 두 집합에 공통인 값이 없는지 결정하기 위해 사용합니다.

EmojiA.isSuperset(of: EmojiC)//

























//: [Next](@next)
