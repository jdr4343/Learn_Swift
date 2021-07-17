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
 # Initializer Delegation
 
 ## Value Type
 */
//생성자 델리게이션을 통해 인스턴스가 초기화 되는 과정을 공부합니다.

//Initializer Delegation은 초기화 코드에서 중복을 최대한 제거하거 모든 속성을 효율적으로 초기화 하기 위해서 사용합니다.
//Initializer Delegation은 값형식과 참조 형식에서 서로 다른 규칙으로 구현됩니다. 값형식은 상속이 불가능하고 initializer 종류가 하나이기 때문에 상대적으로 단순합니다.

//구현되어 있는 코드를 보면 두개의 initializer 가 구현되어있습니다 initializer는 모두 두속성을 초기화 하고 있습니다. 이렇게 해도 문법적으로 전혀 문제 없습니다.
//하지만 초기화 규칙이 바뀐다면 모든 initializer를 수정해야 합니다.여러 initializer을 수정하지 않으면 논리적인 오류가 발생할수 있습니다.
//그래서 모든속성을 초기화 하는 하나의 initializer를 구현하고 다른 initializer가 호출하도록 구현하는 것이 좋습니다.

//여기에서는 두번째 initializer가 첫번째 initializer를 호출하도록 수정하겠습니다.
struct Size {
   var width: Double
   var height: Double

   init(w: Double, h: Double) {
      width = w
      height = h
   }

    init(value: Double) {
        self.init(w: value, h: value)
        //이렇게 다른 initializer가 호출하는 것을 Initializer Delegation이 라고 합니다.
        //Delegation은 우리말로 위임 또는 대리라는 뜻을 가지고 있는데 두번째 initializer가 자신의 역활을 (객체를 초기화) 첫번째 initalizer에게 위임하는 것입니다.
        //단순히 다른 initializer를 호출한다고 해서 initializer Delegation이 되는것은 아닙니다 모든 initializer가 실행된 다음에 전체속성이 초기화 되야 됩니다.
        
    }
}

//Initializer Delegation 구현했을떄의 장점은 초기화 규칙이 변경됬을때 모든 initializer를 수정할 필요없이 첫번쨰 initializer만 수정해주면 되서 유지보수가 수월해집니다.

/*:
 # Initializer -> Initializer -> Initializer
 # Initializer <- Initializer    Initializer
 #      ^          <-            <-              <-
 */
//값형식의 이니셜라이저를 위의 그림으로 정리 하겠습니다. 새개의 Initializer가 구현되어 있다고 가정 해보겠습니다.
//첫번째 그림처럼 Initializer가 연달아서 호출되는 패턴으로 구현해도되고
//두번쨰 그림처럼 나머지 두 이니셜 라이저가 첫번째 Initializer를 호출하는 패턴으로 구현해도 문제가 없습니다.Initializer 실행이 완료되었을떄 모든속성이 초기화 되기만 하면 어떤 패턴으로 구현해도 괜찮습니다.


/*:
 ## Class
 */


//class 에서 Initializer Delegation을 구현해보겠습니다. class는 상속을 지원하고 구현할수 있는 Initializer의 종류가 두가지 이기때문에 상대적으로 복잡합니다. 특히 상속계층을 따라가면서 올라가면서 모든 Initializer 올바른 순서로 호출되도록 구현하는 것이 매우 중요합니다.

//Class의 Initializer Delegation 3가지 규칙을 가지고 있습니다.

//1) designated Initializer 는 반드시 슈퍼클래스에 designated Initializer를 호출 해야합니다.이것을 Delegate Up 이라고 합니다.
//서브 클래스의 designated Initializer 슈퍼클래스의 designated Initializer 직접 호출해야합니다. 동일한 클래스이 다른 designated Initializer 을 호출하는것은 불가능합니다.이경우에는 컴파일 에러가 발생합니다.

//2) convenience Initializer는 동일한 클래스에 있는 다른 initializer를 호출해야 합니다.이것을 Delegate Across 라고 합니다.
//슈퍼클래스의 convenience Initializer는 동일한 클래스의 있는 initalizer를 호출해야 합니다 호출할 initializer의 종류는 관계가 없습니다. 다른 convenience Initializer를 호출할수도 있고 designated initializer를 호출할수도 있습니다. 서브클래스에도 마찬가지로 동일한 클래스의 initializer를 호출해야합니다.하지만 슈퍼클래스의 convenience initializer를 직접 호출하는것은 불가능 합니다.

//3) convenience Initializer를 호출했을때 최종적으로 동일한 클래스의 designated initailizer가 호출되어야 합니다.
//initializer delegation에서 ddesignated initializer는 항상 슈퍼클래스의 designated initializer를 호출해야 합니다. convenirnce initializer는 동일한 클래스의 initializer를 호출해야되고 최종적으로 동일한 클래스에 있는 designated initializer를 호출해야 합니다.


//class 하나 선언하고 designated initailizer 와 convenience Initializer 하나씩 구현하겠습니다.


class Figure {
    let name: String
    //designated initailizer
    init(name: String) {
        self.name = name
    }
    //convenience Initializer
    convenience init() {
        self.init(name: "unknown")
   // 여기에서 designated initailizer 를 호출하고 있습니다.이것은 2번째 규칙입니다.
    }
 }

//새로운 코드를 만들고 FigureClass를 상속하겠습니다.
class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
    //designated initailizer 모든 속성을 초기화 한다음에 마지막에 상위구현을 호출하고 있습니다. 첫번째 규칙입니다.
    init(n: String, w: Double, h: Double){
        width = w
        height = h
        super.init(name: n)
    }
    //convenience Initializer 동일한 클래스의 initializer를 호출하고 있습니다
    convenience init(value: Double) {
        self.init(n: "rect", w: value, h: value)
    }
}

class Square: Rectangle {
    //이 클래스는 속성이 선언되어 있지 않습니다. 그리고 designated initailizer를 구현 하지 않았습니다. 이경우에는 Rectangle에 있는 designated initailizer가 상속됩니다.
    //여기에서 호출하고 있는 initializer는 상속받은 initializer 입니다.
    convenience init(value: Double) {
        self.init(n: "square", w: value, h: value)
    }
    //두번쨰 initializer는 첫번째 initializer를 호출하고 있습니다. 지금까지 구현한 모든 convenience Initializer 보면 3번째 규칙을 충족시키고 있습니다. 최종적으로 같은 클래스에 있는 designated initailizer가 호출되도록 구현되어 있습니다.
    convenience init() {
        self.init(value: 0.0)
    }
}

//class 초기화는 두단계로 실행됩니다.

//첫번째 단계는 선언되어 있는 모든 속성이 초기화 됩니다. 초기화는 서브클래스에서 슈퍼클래스순으로 상속계층을 따라서 위로 올라갑니다.만약 초기화 할수없는속성이 있다면 초기화에 실패하고 더이상 올라가지 않습니다. 반대로 모든 속성이 초기화 되면 첫번째 단계가 완료되고 인스턴스의 유효성이 확보됩니다.

//바로 이어서 두번째 단계가 실행됩니다.두번쨰 단계에서는 슈퍼클래스에서 서브 클래스 순으로 아래쪽으로 내려옵니다 주로 첫번째 단계에서 할수없었던 부가적인 초기화 작업을 실행합니다.이시점에는 인스턴스 속성에 접근하거나 메소드를 호출하는것도 가능합니다.
//두번쨰 단계는 부가적인 단계 이기때문에 아무런 작업 없이 완료되는 경우도 많습니다.

//앞에서 구현했던 initializer delegation이 어떤 순서로 실행되는지 보겠습니다.

//square class에 있는 initializer 중에서 파라미터가 없는 convenience initializer를 호출한다고 가정하겠습니다.
//initializer가 호출되면 인스턴가 없는 메모리 공간이 생성됩니다. 이시점에는 메모리가 초기화된 상태는 아닙니다. 여기에서 다른 convenience initializer가 호출되고 이어서 Rectangle 클래스에서 상속받은 designated initializer가 호출됩니다.
//여기까지는 Delegate Across 입니다.

//designated initializer 는 Delegate Up입니다.그래서 Rectengle 클래스에 있는 designated initializer 가 호출됩니다.
//여기에서는 속성을 초기화 하고 다시 상위구현으로 호출합니다. 이어서 Figure클래스에 있는 designated initializer가 호출됩니다 여기에서는 더이상 올락갈떄가 없습니다.
//여기까지 에러없이 실행되었다면 상속계층에 있는 모든 속성이 초기화 됩니다. 그리고 초기화 단계중에서 첫번째 단계가 완료됩니다.
//두번째 단계는 첫번째 단계와 반대입니다. 첫번째 초기화 했던 initializer 까지 내려오면 initializer 초기화가 완료됩니다.

