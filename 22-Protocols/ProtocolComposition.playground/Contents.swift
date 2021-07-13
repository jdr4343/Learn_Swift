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
 # Protocol Composition
 ![composition](composition.png)
 */
//프로토콜 컴포지션 하나의 형식은 다수의 프로토콜을 채용할수 있습니다.그리고 프로토콜을 채용한 형식의 인스턴스는 프로토콜 형식으로 저장될수 있습니다.


protocol Resettable {
   func reset()
}

protocol Printable {
   func printValue()
}

class Size: Resettable, Printable {
   var width = 0.0
   var height = 0.0
   
   func reset() {
      width = 0.0
      height = 0.0
   }
   
   func printValue() {
      print(width, height)
   }
}

class Circle: Resettable {
   var radius = 0.0
   
   func reset() {
      radius = 0.0
   }
}

class Oval: Circle {
   
}

let r: Resettable = Size()
let p: Printable = Size()
// 만약 두프로토콜을 모두 충족시키고 싶을때 Protocol Composition을 사용합니다.

let rp: Resettable & Printable = Size()
//여기에서 Size() 인스턴스를 저장할수 있는이유는 Size클래스가 두프로토콜을 모두 채용하고 있기때문입니다
/*:
 ![composition2](composition2.png)
 */
//클래스와 프로토콜이 혼합된 형태
//문법처럼 프로토콜 컴포지션에 클래스를 추가하면 모든 서브 클래스를 저장할수 있게 됩니다.
//새로운 변수를 선언하고 Circle 클래스 계층에 있고 Resettable 프로토콜을 채용한 인스턴스를 저장해 보겠습니다.

var cr: Circle & Resettable = Circle()

cr = Oval()
//Oval 클래스를 보면 Circle 클래스를 상속합니다. 그리고 Circle 클래스로 부터 상속받은 구현으로 Resettable 프로토콜의 요구사항을 충족시킵니다. 그래서 마지막 코드처럼 cr변수에 문제없이 저장할수 있습니다.
















