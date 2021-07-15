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
import UIKit

/*:
 # Upcasting & Download Casting
 */
//인스턴스를 동일한 클래스 계층에 존재하는 다른 클래스 형식으로 처리하는 방법을 공부합니다.


class Figure {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func draw() {
        print("draw \(name)")
    }
}


class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
    
    override func draw() {
        super.draw()
        print("⬛️ \(width) x \(height)")
    }
}

class Square: Rectangle {
   
}

let f = Figure(name: "Unknow")
f.name
//상속 계층에서 위에 있는 class는 아래쪽에 있는 class가 어떠한 속성을 가지고 있는지 모릅니다.
let r = Rectangle(name: "Rect")
r.width
r.height
r.name

//s 상수의 자료형을 Figure로 선언 해보겠습니다. 이렇게 sub class 인스턴스를 super class 형식에 저장하는 것을 upcasting 이라고 합니다.
let s: Figure = Square(name: "Square")

//동일한 클래스 계층에서 수행되는 업캐스팅은 안전하고 항상 성공 합니다. 여기서 안전하다는 뜻은 에러가 발생하지 않는다는 것입니다. 그래서 upcasting은 별도의 문법이 필요하지 않습니다.
//upCasting의 반대 개념은 DownCasting입니다 DownCasting은 Upcasting된 인스턴스를 원래 형식으로 처리하기 위해 필요합니다. Upcasting과 달리 에러가 발생하고 항상 성공 하는것도 아닙니다. 그리고 DownCasting에는 타입캐스팅 연산자를 사용합니다.

//s.width
//s.height
s.name
//s상수의 자료형은 Square 이고 동시에 상속받은 부모 Rectangle 과 Figure 이기도 합니다.

//s 상수를 Square클래스로 다운캐스팅 해보겠습니다. as가 바로 Typecasting 연산자입니다.
let downcasetedS = s as! Square
//다시 원래형식이 되었기 때문에 상속받은 속성에 모두 접근할수 있습니다.
downcasetedS.name
downcasetedS.width
downcasetedS.height
//이렇게 에러는 발생하지 않습니다. 지금 처럼 원래 형식으로 DownCasting 하는것은 언제나 성공합니다.
let downcasetedS2 = s as! Rectangle
downcasetedS2.width
//Upcasting된 클래스의 subclass이면서 원본 클래스에 superClass로 다운 캐스팅 하는것도 가능합니다.

class Rhombus: Square {
    var angle = 45.0
}
//let dr = s as! Rhombus
//Rhombus 상수가 동일한 상속 계층에 있지만 인스턴스의 원래 형식인 Square 보다 아래쪽에 있습니다. 이경우에는 DownCasting 이 실패합니다.
