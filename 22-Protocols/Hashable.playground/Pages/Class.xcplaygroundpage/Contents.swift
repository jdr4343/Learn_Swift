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
 # Hashable for Classes
 */
//클래스는 열거형과 구조체와는 다르게 Hashable을 자동으로 제공하지 않아 우리가 직접 구현 해야합니다
class Person {
   let name: String
   let age: Int
   
   init() {
      name = "Jane Doe"
      age = 0
   }
}

//여기에서 복잡한 Hasher 알고리즘을 직접 구현할 필요는 없습니다 복잡한 부분은 파라미터로 전달되는 Hasher가 모두 처리해줍니다 우리는 그냥 Hasher가 제공하는 comfile 메소드를 활용해서 Hasher에 포함시킬 속성을 전달하면 됩니다
extension Person: Hashable {
    static func ==(lhs: Person, rhs: Person) -> Bool {
    return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
        //이렇게 combine으로 속성을 전달할때에는 항상 동일한 순서로 전달하고 특별한 이유가 없다면 모든 저장 속성을 전달 해야합니다.
        //combine 전달하는 속성은 반드시 Hashable을 구현해야 합니다.
    }
}


let set: Set = [Person()]

let type: [Person: String]
