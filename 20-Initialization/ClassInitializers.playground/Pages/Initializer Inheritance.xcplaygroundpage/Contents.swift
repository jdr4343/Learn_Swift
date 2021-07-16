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
 # Initializer Inheritance
 */
//Initializer는 다른 멤버와 마찬가지로 서브클래스로 상속됩니다.
//다른멤버는 조건없이 상속되지만 Initializer는 상속되는 조건이 까다롭습니다. 기본적으로 슈퍼클래스에서 구현한 Initializer는 서브클래스로 상속되지 않습니다.

class Figure {//name 속성을 초기화 하는 Initializer가 구현되어 있습니다.
   var name: String

   init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
    //Figure class에 Convenience initializer 키워드를 추가하겠습니다.
    convenience init() {
        self.init(name: "unknown")
    }
}

class Rectangle: Figure {//두개의 속성이 선언되어 있습니다.
    var width: Double = 0.0
    var height: Double = 0.0
    
    init(name: String, width: Double, height: Double) {//앞에서 Designated Initializer는 모든 속성을 초기화 해야한다고 배웠습니다. 그래서 이렇게 모두 초기화 했는데 에러가 발생합니다.
        //만약 클래스가 다른 클래스를 상속하지 않았다면 올바른 코드지만 지금은 상속계층에 포함되어 있기때문에 다른방식으로 구현합니다.
        //일단 이코드에는 두가지 문제가 있습니다. 우선 슈퍼클래스에 Designated Initializer 를 호출하지 않고 있습니다. 그리고 상위 구현을 호출하기 전에 상속받은 name 속성에 접근하고 있습니다.
        //이런건 문법적으로 허용되지 않습니다. 보통은 현재 클래스에 선언된 속성만 초기화 하고 나머지는 슈퍼 클래스에 맡깁니다.
        super.init(name: name)//이렇게 현재 클래스에 있는 속성을 초기화 한다음에 상위구현을 호출합니다.
        self.width = width
        self.height = height
    }
    //이번에는 상속받은 Initializer 오버라이딩 해보겠습니다.오버라이딩 강의 에서 배웠던 것처럼 init 키워드 앞에 오버라이딩 키워드를 추가했습니다. 방금 오버라이딩한 initializer는 Designated initializer 입니다.
    //그래서 조금전과 마찬가지로 현재 클래스에 있는 속성을 초기화 한다음에 상위구현을 호출하고 있습니다.
    override init(name: String) {
        width = 0
        height = 0
        super.init(name: name)
    }
    //이번에는 Designed initialazer와는 달리 오버라이드 키워드를 추가하지 않았습니다. 그런데 에러는 발생하지 않죠 convenience initializer는 항상 동일한 클래스에 있는 다른 initializer를 호출합니다. 그리고 슈퍼클래스에 있는 initializer 을 직접호출하는 것은 불가는 합니다. 그래서 오버라이딩이라는 개념이 적용되지 않습니다.
    convenience init() {
        self.init(name: "unknown")
    }
}
//이속성들은 기본값을 가지지 않고 있기때문에 초기화가 필요합니다.
//이상태에서 Initializer가 상속되었다고 가정해보곘습니다.
//Figure에선 name 속성만 초기화 하고 있죠?만약 Rectangle을 상속된 Initializer 로 초기화 한다면 width,height 속성은 여전히 초기화 되지 않은 상태로 남아있습니다.
//스위프트에서는 이런건 초기화 실패 입니다.지금처럼 상속된 Initializer가 일부속성만 초기화하는것을 막기 위해서 Initializer가 상속되지 않는 것입니다.

//스위프트 두가지 규칙에 따라 Initializer를 상속합니다.
//첫번째 서브클래스에 모든 속성이 기본값으로 초기화 되어 있고 Designated Initializer 직접 구현하지 않았다면 슈퍼클래스에 있는 모든 Designted Initializer가 상속됩니다.
//Ractengle 클래스에 선언되어 있는 속성에 기본값을 지정하겠습니다.이제 상속된 Initializer 를 사용해도 일부속성만 초기화 되는 문제는 발생하지 않습니다.

//두번째 서브클래스가 모든 Designated Initializer를 상속 받았거나 오버라이딩 했다면 모든 Conveniece initaializer가 상속됩니다.
//Ractengle 클래스에 Designated Initializer 를 추가 하겠습니다.










//: [Next](@next)
