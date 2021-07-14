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
 # self
 ![self](self.png)
 */
//자동으로 제공되는 특별한 속성인 self와 super에 대해 알아봅시다

//self는 우리가 직접 선언하지 않습니다. 인스턴스에 자동으로 추가됩니다. self는 인스턴스 멤버 내부에서 접근하면 해당 인스턴스에 접근합니다. 그리고 타입멤버 내부에서 접근한다면 형식 자체에 접근합니다.
//위의 문법은 다양한 self 표현식을 보여줍니다.

//첫번쨰 표현식은 인스턴스 자체에 접근할때 사용됩니다.
//두번째는 인스턴스 속성에 접근할때 사용됩니다.
//세번째는 인스턴스 메서드를 호출할때 사용됩니다.속성에 접근하고 메서드를 호출할때에는 대부분 self와 . 은 생략합니다.
//네번째는 subscript를 호출할때 사용합니다.
//5번째는 동일한 형식에 있는 다른 생성자를 호출할때 사용합니다.앞에서 설명한 두 표현식과 달리 셀프를 생략할수 없습니다.


class Size {
   var width = 0.0
   var height = 0.0
    
    //새로운 메서드 추가
    func calcArea() -> Double {
        return width * height//return self.width * self.height
        //정식문법으로 코드를 작성하면 self 익스프레션으로 속성에 접근합니다. 하지만 대부분 self를 생략합니다.
    }
    //계산 속성을 추가하고 메소드가 리턴하는 값을 그대로 리턴하겠습니다.
    var area: Double {
        return calcArea()//return self.calcArea()
        //여기에서도 메소드를 호출할때 self 익스프레션으로 호출하고 있습니다.하지만 속성과 마찬가지로 주로 self를 생략합니다
    }
    //너비와 높이를 업데이트 하는 메소드를 추가하겠습니다.
    func update(width: Double, height: Double) {
        self.width = width
        self.height = height
        //지금은 파라미터의 이름과 속성이름이 동일합니다 컴파일러는 메소드 바디에서 사용된 width와 height를 모두 파라미터로 인식합니다. 이경우에 self를 사용해서 속성과 파라미터를 구분해줍니다.
    }
    //self를 생략할수 없는 경우를 보겠습니다.
    func doSomething() {
        let c = { self.width * self.height}
        //클로저 내부에서 속성에 접근하고 있습니다 클로저에서 인스턴스 멤버에 접근하려면 self를 캡쳐해야 합니다.
    }
    //size class에 형식 속성과 형식 메소드를 하나씩 추가 하겠습니다.
    static let unit = ""
    
    static func doSomething() {
        //앞에서는 인스턴스 멤버에서 self를 사용했습니다. self를 타입멤버에서 사용하면 인스턴스가 아니라 형식자체를 나타냅니다.doSomething 메소드는 형식 메소드입니다.형식메소드에서 인스턴스 속성에 직접 접근하는것은 불가능합니다. 더욱이 여기에서 사용한 self는 형식 자체를 나타내는데 width라는 이름을 가진 형식속성은 존재하지 않습니다
        //self.width
        self.unit//둘다 타입 멤버이기 때문에 self익스프레션을 통해서 접근할수 있습니다.(static)
    }
}
//핵심
//self는 현재 인스턴스에 접근 하기위해 사용하는 특별한 속성이다.
//self를 타입멤버에서 사용하면 인스턴스가 아닌 형식자체를 나타낸다.





//값형식에서 self를 활용하는 패턴
struct Size1 {
   var width = 0.0
   var height = 0.0
    //지정된 값으로 속성을 초기화 하는 메소드 추가
    mutating func reset(value: Double) {
    width = value
    height = value
    // 지금처럼 이렇게 개별속성을 하나씩 초기화 해도 아무런 문제가 없습니다.이 코드를 self에 새로운 인스턴스를 저장하는 코드로 바꾸겠습니다.
        self = Size1(width: value, height: value)
    //이렇게 하면 인스턴스가 새로운 인스턴스로 교체 됩니다.이패턴은 생성자를 통해서 초기화 할수 있다는 장점이 있지만 class에서는 사용할수 없습니다.
    }
}

/*:
 # super
 ![super](super.png)
 */
//super
//superExpresion은 selfExpresion과 유사한 형태를 가지고 있습니다.self 되신 super 키워드를 사용하는 점을 뺴면 문법적인 차이는 없습니다. self속성은 구조체의 클래스에 열거형에서 모두 사용하지만 super속성은 상속과 관련있기 때문에 class에서만 사용합니다.이 속성은 super class에 있는 멤버에 접근합니다.
