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

import Foundation

/*:
 # Collections of Protocol Types
 */
//프로토콜을 활용해서 상속과 유사한 패턴을 구현 해보겠습니다.

protocol Figure {
   func draw()
}

struct Triangle: Figure {
   func draw() {
      print("draw triangle")
   }
}

class Rectangle: Figure {
   func draw() {
      print("draw rect")
   }
}

struct Circle: Figure {
   var radius = 0.0

   func draw() {
      print("draw circle")
   }
}

let t = Triangle()
let r = Rectangle()
let c = Circle()
//모든 인스턴스를 하나의 배열에 저장해 보겠습니다.
//let list = [t, r, c]
//인스턴스의 형식이 모두 다르고 심지어 값 형식과 참조 형식이 혼재 되어 있기 때문에 에러가 발생합니다.
//만약 인스턴스의 형식이 동일한 상속계층에 있는 클래스로 구현되어 있다면 자동으로 업 캐스팅되어 저장 되었겠지만 이코드는 그렇지 못합니다.
//하지만 세형식은 Figure 프로토콜을 공통적으로 채용하고 있습니다. 프로토콜은 First class citizen 이기 때문에 형식으로 사용할수 있습니다.
let Figurelist: [Figure] = [t, r, c]
//이렇게 배열형식을 Figure 배열로 저장하면 모든 인스턴스를 저장할수 있습니다.
//인스턴스가 값인지 객체인지 상관하지 않고 Figure 형식으로 캐스팅 해서 저장합니다.
for item in Figurelist {
    item .draw()
    //공통적으로 들어간 draw는 사용할수 있지만 Circle의 radius는 사용할수 없습니다. 이런경우 as? 연산자를 활용해서 원래 형식으로 캐스팅 해야됩니다. 
    if let c  = item as? Circle {
        c.radius
    }
}




