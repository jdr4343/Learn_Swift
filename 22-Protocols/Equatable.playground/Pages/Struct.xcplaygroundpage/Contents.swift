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
 # Equatable for Structures
 */
// 여기있는 Person 구조체는 Equatable 구현하지 않았기 때문에 비교연산이 에러가 뜹니다 Equatable 를 추가해주면 에러가 뜨지 않습니다.
struct Person: Equatable {
   let name: String
   let age: Int
}

let a = Person(name: "Steve", age: 50)
let b = Person(name: "Paul", age: 27)

a == b
//Equatable 채용하겠다고 선언만 하면 두 인스턴스를 비교할수 있습니다.
//열거형과 마찬가지로 여기에도 조건이 있습니다.
//구조체에 포함된 모든 형식이 기본 형식으로 선언되어 있다면 / Equatable구현한 형식으로 선언되어 있다면 구조체의 Equatable구현을 자동으로 추가합니다.
//이때 우리가 해야하는 작업은 Equatable 프로토콜을 채용하겠다고 선언하는것 뿐입니다.

//: [Next](@next)
