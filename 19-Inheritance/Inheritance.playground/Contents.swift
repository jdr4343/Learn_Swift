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

//class 계층에서 가장위에 있는 class를 Base Class나 Root class 라고 부릅니다.
//바로 아래층에 있는 클래스는 base 클래스를 상속합니다.상속관계에서 위에 있는 클래스를 Parent Class, Super Class 라고 부릅니다.
//그리고 그아래에 있는 classfmf Child Class 나 Subclass 라고 부릅니다.
//base class 아래 쪽에는 하나 이상의 subclass 하나가 존재 하지만 위쪽에는 super Class가 존재 하지 않습니다.
//여러 subclass가 공통적인 superClass 를 상속하는건 문제가 없습니다. 그래서 이런 계층은 올바른 계층입니다.
//반면 두개이상의 superClass를 상속하는건 불가능합니다. 이것을 다중상속이라고 하는데 스위프트에서는 지원되지 않습니다.다중상속과 유사한 패턴은 protocol을 활용해서 구현합니다.
//다른 class를 상속하는 것을 subclassing이라고 합니다.subclass는 superclass에 선언되어 있는 멤버들을 상속합니다.마치 subclass에서 직접 선언한것 처럼 상속된 멤버를 자유롭게 사용할수 있습니다.
//superclass로 부터 상속한 멤버가 subclass에 적합하지 않다면 구현을 수정하는 것도 가능합니다. 이것을 Overriding(재정의)라고 합니다.
//superclass에서 상속은 하면서 재정의를 금지 하는것도 가능합니다.

/*:
 # Inheritance
 ![inheritance](inheritance.png)
 */
//클래스에서 상속을 통해 super Class로 부터 멤버를 상속하는 방법에 대해 공부합니다.

//위의 subclassing 문법을 보면 매우 단순합니다. class 이름 다음에 : 을 적고 상속할 class 이름을 적습니다. 이렇게 하면 superclass에 있는 멤버가 상속됩니다.

//base class /이 클래스는 도형을 추상화한 class 입니다 name 속성과 도형을 그리는 메소드를 가지고 있습니다.
class Figure {
    var name = "Unknown"
    
    init(name: String) {
    self.name = name
    }
    func draw() {
        print("draw \(name)")
    }
}

//Figure class 를 상속하겠습니다.
class Circle: Figure {
    var radius = 0.0
}

let c = Circle(name: "Circle")
//Circle class에는 생성자가 구현되어 있지 않지만 Figure class로 부터 생성자를 상속 받았습니다.그래서 지금처럼 name 파라미터를 받는 생성자를 사용할수 있습니다.
c.radius
c.name
c.draw()

//핵심은 subclass는 superclass로 부터 멤버를 상속한다는 것입니다.
/*:
 ## final class
 ![final class](final-class.png)
 */
class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
}
//Rectangle class를 상속할 square class를 선언하겠습니다.

final class Square: Rectangle {
    //이렇게 되면 3개의 class가 상속계층을 구성합니다. Rectangle는 Figure를 상속받고 square class는 Rectangle를 상속받습니다.
    //모든 class는 상속의 대상이 될수있지만 경우에따라서 상속을 금지해야하는때가 있는데 그럴때 class 앞에 final 키워드를 추가합니다.
    //이런 class를 상속이 금지된 final class라고 합니다.
}







