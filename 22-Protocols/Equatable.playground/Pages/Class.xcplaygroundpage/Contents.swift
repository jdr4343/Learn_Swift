//
//  Mastering Swift
//  Copyright (c) KxCoding <help@kxcoding.com>
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

//: [Previous](@previous)

import Foundation

/*:
 # Comparable for Classes
 */

class Person {
    
    
    //구조체에선 Equatable 채용해도 컴파일 오류가 발생하지 않았는데 클래스에서는 프로토콜을 충족시키지 않았다는 에러가 납니다.
    //구조체라면 Equatable 구현을 자동으로 해주지만 class는 아닙니다. class에서는 프로토콜에 선언되어 있는 멤버를 우리가 직접 구현해야합니다.
   let name: String
   let age: Int
   
   init(name: String, age: Int) {
      self.name = name
      self.age = age
   }
}


extension Person: Equatable {
static func == (lhs: Person, rhs: Person) -> Bool {
    return lhs.name == rhs.name && lhs.age == rhs.age
    }
}


let a = Person(name: "Steve", age: 50)
let b = Person(name: "Paul", age: 27)

a == b
a != b


//Equatable을 구현할때에는 인스턴스를 정확히 비교할수 있도록 구현해야 합니다.
//extension의 return을 보면 특정속성만 비교하는 것이 아니라 모든 속성을 비교하고 있습니다. 만약 특정 속성을 비교하지 않는다면 예상과 다른 결과를 얻게됩니다.
//그래서 특별한 이유가 없다면 여기에서는 모든 속성을 비교해야 합니다.

//그리고 프로토콜을 구현한다음에 3가지조건을 검증 해봐야합니다.
a == b
a != b
//이렇게 동일한 인스턴스를 비교하면 항상 트루가 리턴되야 합니다.
a == a

//만약 a와 b 를 비교한 결과가 트루라면 b == a를 비교한 결과도 트루가 되야 합니다.
a == b
b == a
//지금 처럼 false일떄는 두결과 모두 false가 되야합니다.

//a와 b를 비교한 결과와 b 와 c를 비교한 결과가 같다면 a와 c를 비교한 결과도 같아야 합니다.

//Equatable 구현할떄는 이런것들을 반드시 검증해야 합니다. 모든 속성을 비교하면 이런 조건이 쉽게 충족됩니다.
