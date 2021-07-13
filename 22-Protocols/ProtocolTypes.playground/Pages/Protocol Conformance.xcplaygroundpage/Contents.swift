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
//: [Previous](@previous)

import UIKit

/*:
 # Protocol Conformance
 ![is](is.png)
 ![as](as.png)
 */
//프로토콜 적합성
//프로토콜 적합성은 특정형식이 프로토콜을 채용하고 있는지를 나타내는 척도 입니다.
//프로토콜 적합성은 타입캐스팅 연산자를 통해서 확인합니다.
//그리고 클래스에서 공부했던 다운캐스팅과 유사합니다.

// is 연산자는 형식이 프로토콜을 채용하고 있는지 확인할때 사용합니다. 왼쪽 피연산자로 전달된 인스턴스의 형식이 오른쪽 피연산자로 전달된 프로토콜을 채용하고 있다면 true를 리턴합니다.
// as 연산자는 인스턴스를 프로토콜 형식으로 캐스팅 하거나 프로토콜 형식에 저장된 형식을 실제형식으로 캐스팅 할때 사용됩니다.

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

let s = Size()
//Size 인스턴스가 Resettable 형식을 채용하고 있는지 알아보겠습니다
s is Resettable
//인스턴스가 이프로토콜을 채용하고 있기 떄문에 트루가 리턴됩니다.
s is ExpressibleByNilLiteral
//채용하고 있지 않기 때문에 false를 리턴합니다.

//Size 인스턴스를 Resettable 형식으로 캐스팅 해보겠습니다.
let r = Size() as Resettable
//실제로 생성된 인스턴스는 Size 인스턴스이지만 r 상수엔 Resettable 형식으로 저장됩니다.

//다시 원래 형식으로 캐스팅 하고 싶다면
r as? Size
//이렇게 런타임 캐스트로 구현합니다.
//인스턴스를 프로토콜 형식으로 캐스팅 할때에는 컴파일 타임 캐스트와 런타임 캐스트를 모두 사용할수 있습니다. 하지만 원래 형식으로 캐스팅 할때에는 컴파일 타임 캐스트는 사용할수 없습니다.
//: [Next](@next)
