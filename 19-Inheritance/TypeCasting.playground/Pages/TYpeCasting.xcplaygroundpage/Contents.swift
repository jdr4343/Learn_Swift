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
 # Type Casting
 */
//Type Casting 을 통해 인스턴스 형식을 확인하고 다른 형식으로 캐스팅하는 방법을 알아봅시다.
//Type Casting은 인스턴스 형식을 확인하거나 다른 형식으로 인스턴스를 처리할때 사용합니다.
//Type Casting에서 핵심은 타입캐스팅 연산자 입니다. 두가지 Type Casting 연산자가 있는데 먼저 Type Cheak 연산자를 보겠습니다.
class Figure {
   let name: String
   
   init(name: String) {
      self.name = name
   }
   
   func draw() {
      print("draw \(name)")
   }
}

class Triangle: Figure {
   override func draw() {
      super.draw()
      print("🔺")
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

class Circle: Figure {
   var radius = 0.0
   
   override func draw() {
      super.draw()
      print("🔴")
   }
}



/*:
 ## Type Check Operator
 ![type-check](type-check.png)
 */
//Type Cheak 연산자
//is는 이항 Type Cheak 연산자 입니다.
//왼쪽에는 표현식이 오는데 주로 형식을 확인할 대상이 옵니다. 그리고 오늘쪽에는 언제나 형식이 옵니다.
//연산의 결과는 단순합니다. 두 피연산자의 형식이 동일하다면 true가 리턴됩니다.
//그리고 왼쪽 피연산자의 형식이 오른쪽 피연산자의 형식과 동일한 상속 계층에 있고 오른쪽 피연산자가 superClass라면 이경우에도 true가 리턴됩니다.나머지 경우에는 false가 리턴됩니다.
//새로운 상수에 숫자를 지정하겠습니다.
let num = 123
//타입 체크 연산자로 형식을 확인해 보겠습니다.
num is Int
num is Double
num is String
//Int는 Double 이나 String과 호환되지 않고 상속관계에 있는것도 아닙니다 그래서 나머지 두연산자에서는 false가 리턴됩니다.

//인스턴스를 하나씩 만들겠습니다.
let t = Triangle(name: "Triangle")
let r = Rectangle(name: "Rectangle")
let s = Square(name: "Square")
let c = Circle(name: "Circle")

r is Rectangle
r is Figure
//r 상수에 저장 되어있는 인스턴스 형식은 Rectangle class입니다 그래서 is 연산자로 확인해보면 true가 리턴됩니다. Figure 클래스를 상속하고 있기떄문에 Rectangle 인스턴스를 Figure 클래스로 upcasting 할수 있습니다. 이경우에 타입체크 연산자는 트루를 리턴합니다.
r is Square
//Square class는 Rectangle 을 상속한 클래스 입니다. 그래서 Rectangle 클래스를 Square 클래스로 다운캐스팅하는게 불가능 합니다.이경우에 타입체크 연산자는 false를 리턴합니다.
//타입체크연산자는 런타임에 타입을 체크합니다. 코드 오른쪽을 보면 다양한 경고 문자를 표시하고 있는데 항상 성공하는지 항상 실패 하는지만 알려줍니다.
//실제로 작성하게되는 타입체크 코드는 마지막에 작성한 코드처럼 컴파일 타입에 결과를 단정할수 없습니다. 최종결과를 확인하기 위해서는 코드를 실행해야합니다. 경고메시지때문에 컴파일 때문에 타입을 체크한다고 생각하면 안됩니다. 타입체크는 런타임에 실행됩니다.

/*:
 ## Type Casting Operator
 ![type-casting](type-casting.png)
 */
//타입 캐스팅 연산자는 as 입니다.
//is 연산자와 마찬가지로 왼쪽에는 표현식이 오고 오른쪽에는 형식이 옵니다.
//타입캐스팅 연산자는 왼쪽 피연산자의 형식이 오른쪽 형식과 호환된다면 오른쪽 형식으로 캐스팅된 인스턴스를 리턴합니다. 여기서 중요한점은 새로운 인스턴스가 리턴되는것은 아닙니다.
//이미 존재하는 인스턴스에서 오른쪽 피연산자 형식에 있는 멤버만 접근할수 있는 임시 인스턴스를 리턴합니다.

//타입캐스팅 연산자는 세가지 형태를 가지도 있습니다 첫번째는 CompileTimeCast 입니다.
//위의 문법을 보면 연산자는 as라는 단어로만 구성되어 있습니다. 서로 호환되는 형태를 캐스팅 하는거를 브릿징 이라고 하는데 CompileTimeCast는 주로 브릿징에 사용됩니다.

//간단한 예를 하나 보겠습니다. 구조체로 구현된 String 자료형은 class로 구현된 NSString 자료형과 호환됩니다.그래서 이렇게 as 연산자로 CompileTimeCast를 구현할수 있습니다. 이름 그대로 컴파일 타임에 실행됩니다
let nsstr = "str" as NSString

//나머지 두가지 형태는 RuntimeCast 입니다. 연산자를 보면 as뒤에 ? 와 !가 붙어있습니다. casting에 옵셔널 개념이 추가되었습니다. 일단 이름에 Runtime이 포함되어 있기 때문에 런타임에 실행됩니다.CompileTimeCast와 반대로 컴파일 타임에 결과를 알수 없습니다.
//먼저 ?가 붙어있는경우 ConditionalCast라고 합니다. 옵셔널에서는 어떤 작업을 성공하면 결과를 리턴하고 실패하면 nil을 리턴합니다. ConditionalCast 도 마찬가지로 캐스팅이 성공하면 ConditionalCast 인스턴스를 리턴하고 실패하면 nil을 리턴합니다.
//as 다음 !가 붙어있는경우 ForcedCast 입니다. 강제 추출연산자와 마찬가지로 캐스팅에 실패하면 크래쉬가 발생합니다. 가능하다면 사용하지 않는편이 좋습니다.

//런타임 캐스트를 구현해 보겠습니다.
t as? Triangle
t as! Triangle
//원래 형식으로 캐스팅 하는경우에는 정상적으로 실행됩니다.경고문 처럼 원래형식으로 캐스팅 하는것은 아무의미가 없습니다. 주로 다운캐스팅에 사용하거나 값형식을 다른형식으로 캐스팅할때 사용합니다.
//Square인스턴스를 Figure로 업캐스팅 하겠습니다.
var upcasted: Figure = s
//이렇게 CompileTimeCast로 업캐스팅 하는것도 가능합니다.
upcasted = s as Figure

//원래 형식으로 다운캐스팅 성공
upcasted as? Square
upcasted as! Square

//원래 형식에 super 클래스로 다운캐스팅 성공
upcasted as? Rectangle
upcasted as! Rectangle

//Circle로 다운캐스팅 해보겠습니다.
upcasted as? Circle//두 클래스는 직접적인 상속관계가 없습니다. 그래서 ConditionalCast는 nil을 리턴합니다.
//upcasted as! Circle 실행해보면 에러가 발생합니다.

//실제로 다운캐스팅을 구현할때에는 이렇게 ConditionalCast 와 Optional 바인딩을 함께 사용하는것이 좋습니다
if let c = upcasted as? Circle {
}
//앞에서 생성한 인스턴스를 배열에 저장했습니다. 배열에는 동일한 형식만 저장할수 있다고 공부했는데 지금은 서로 다른 형식을 저장하고 있죠 그런데 컴파일 오류 없이 잘실행됩니다. 그러면 list 배열의 자료형은 뭘까요? 이렇게 모든 요소가 동일한 상속 계층에 있다면 가장 인접한 superclass로 업캐스팅되어서 저장됩니다.
let list = [t, r, s, c]

//자료형을 확인해보면 Figure 배열입니다. 가장 인접한 superClass인 Figure 클래스로 업캐스팅 되었습니다.
//for in 문으로 열거해 보겠습니다. list가 Figure 배열이기 떄문에 item의 형식은 Figure입니다.draw 메소드를 호출해보면 비록 Figure 형식에서 호출했지만 ovveriding한 메소드가 호출됩니다. 이것은 객체지향의 특징중에서 다향성입니다.여기에 대한 자세한 내용은 검색을 통해 알아봅시다.
//UPcasting되어 있는 인스턴스를 통해서 메소드를 호출하더라도 실제 형식에서 ovveriding한 메소드가 호출됩니다.

for item in list {
    item.draw()
    //item.radius
    //Figure클래스에 선언되어 있는 속성에만 접근가능합니다. 그렇다면 여기에서 radius속성에 접근하자 하자면 downcasting을 이용해야 합니다.
    if let c = item as? Circle {
        c.radius
    }
}
//



