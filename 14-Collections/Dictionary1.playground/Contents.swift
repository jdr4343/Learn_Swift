//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import Foundation
/*:
 # Dictionary
 ## Dictionary Literal
 ![dictliteral](dict-literal.png)
 */
//이름 그대로 사전과 유사한 형태로 데이터를 저장하는 컬렉션
//하나의 요소에 키와 값이 함께 저장됨
//하나의 Dictionary내에서 키는 유일한 값을 가져야됨 값은 중복되어도 문제 없음
//Dictionary에 저장된 요소는 정렬되지 않음 그래서 인덱스가 존재하지만 사용하지 않음,그리고 굳이 정렬하지도 않음
//Dictionary 저장되는 값은 모두 타입이 같아야 됨 키와값이 쌍으로 저장되는 값이 모두 같아야됨
//기본 선언 2개의값
var dict = ["A": "Apple", "B": "Banana"]
//빈 dictuinaty
//var emptyDict = [:]


/*:
 ## Dictionary Type
 ![type1](dict-type.png)
 ![type2](dict-type2.png)
 */
//Dictionary는 키와 값을 하나의 요소로 저장하기 때문에 키의 자료형과 값의 자료형은 개별적으로 지정합니다.
//String 키와 Int 값을 저장하는 Dictionary를 선언해보겠습니다.

let dict1: Dictionary<String,Int>
//단축 문법
let dic2: [String:Int]

/*:
 ## Creating a Dictionary
 */
//리터럴을 사용해 가장단순한 dictionary 선언
let words = ["A": "Apple", "B": "Banana", "C": "City"]
//빈 dictionary 만들어 보겠습니다. dictionary에 들어있는 키와값의 타입을 추론 해야하는데 추론할 값이 없으므로 명시적으로 자료형을 선언해 주겠습니다.
let emptydict: [String: String] = [:]
//생성자를 사용해서 빈 dictionary를 만들어 보겠습니다.
let emptydict2 = [String: String]()
let emptydic3 = Dictionary<String, String>()


/*:
 ## Inspecting a Dictionary
 */
//저장되어 있는 요소의 숫자를 확인해 보겠습니다.
words.count
//빈 dictionary type 인지 확인
words.isEmpty
//대부분 배열(Array)과 비슷함

/*:
 ## Accessing Keys and Values
 */
//dictionary에 저장되있는 요소에 접근해 보겠습니다. 요소에 접근할때는 subscript 문법을 사용합니다.
//subscript로 key를 전달해 보겠습니다.
words["A"]
//"E라는 키를 전달한 다음에 값을 상수에 저장해 보겠습니다.
let a = words["E"]
//정상적으로 값이 리턴 된다면 문자열이 전달되고 저장된 값이 없다면 nil이 저장됩니다. 그래서 a의 자료형은 nil 옵셔널String 입니다
a
//만약 전달하는 key가 없다면 기본값으로 리턴하도록 구현하는것도 가능합니다.
//이렇게 subscribt로 key만 전달하는 것이 아니라 기본값으로 사용할 String도 함께 전달하면 키와 연관된 값이 없는경우에는 기본값을 전달합니다.
let v = words["E", default: "Empty"]
//dictionary는 키와 값을 개별적으로 리턴하는 속성을 제공합니다.
//먼저 key를 반대로 열거 해보겠습니다.
for k in words.keys.sorted() {
    print(k)
}
//같은 방법으로 value를 열거 해보겠습니다.

for v in words.values {
    print(v)
}
//두속성이 리턴하는 값을 배열로 바꾸고 싶다면 간단히 배열 생성자로 바꾸면 됩니다.
let keys = Array(words.keys)
let values = Array(words.values)











