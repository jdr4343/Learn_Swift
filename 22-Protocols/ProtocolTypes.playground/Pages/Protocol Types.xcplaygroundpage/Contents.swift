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
 # Protocol Types
 */
//프로토콜 타입,타입캐스팅 활용 적합성 확인
//프로토콜은 First class citizen 입니다. 다시 말해서 독립적인 형식입니다.
//변수나 상수를 선언할때 자료형으로 선언 하거나 파라미터의 자료형으로 사용할수있고 리턴형으로 사용하는것도 가능합니다.

protocol Resettable {
   func reset()
}

class Size: Resettable {
   var width = 0.0
   var height = 0.0
   
   func reset() {
      width = 0.0
      height = 0.0
   }
}
//새로운 인스턴스를 생성하겠습니다.
let s = Size()
//이번에는 상수의 형식을 Resettable로 선언하겠습니다.
let r: Resettable = Size()
//프로토콜은 형식으로 사용될수 있고 Resettable 프로토콜을 채용하고 있는 Size 인스턴스를 Resettable 형식으로 저장할수 있습니다.
//이것은 superclass 형식으로 저장하는 upcasting과 유사합니다.

//upcasting 한 경우에는 해당 클래스에 선언되어있는 메모만 사용할수 있습니다.
//여기에서도 마찬가지입니다. 프로토콜 형식으로 저장하면 프로토콜애 선언되어 있는 멤버만 사용할수 있습니다.
//c상수에는 실제로 Size인스턴스가 저장되어 있지만 width 속성이나 height 속성에 접근해보면 에러가 발생합니다.
//반면 프로토콜에 선언되어 있는 reset 메소드를 호출하는것은 가능합니다.
//값형식은 상속이 불가능하지만 프로토콜을 사용하면 이렇게 상속과 유사한 패턴을 구현 할수있습니다.
let b = Size()
let c: Resettable = Size()
//c.width
c.reset()






//: [Next](@next)
