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
 # Initialization
 
 ## Default Initializer
 */
// 생성자의 인스턴스 초기화에 대해 공부합니다.
//이니셜라이저는 우리말로 생성자로 불립니다.구조체 열거형 클래스는 모두 설계도 입니다.설계도를 기반으로 생성한것을 인스턴스라도 부릅니다.
//다른언어에서는 객체에 한해서 인스턴스라는 용어를 사용하지만 스위프트에서는 구분없이 사용합니다. 새로운 인스턴스를 생성하는것을 초기화라고 합니다.
//인스턴스에 초기화를 담당하는것이 바로  Initializer입니다 초기화의 목적은 매우 단순하고 명확합니다. 모든 속성을 기본값으로 초기화 해서 인스턴스를 기본상태로 만드는 것입니다.
//인스턴스가 정상적으로 초기화 되었다는것은  Initializer 의 실행이 완료되었을떄 모든 속성이 기본값을 가지고 있다는 뜻입니다. 만약 기본값이 없는 속성이 존재한다면 초기화는 실패하고 인스턴스는 생성되지 않습니다.

class position {
    //초기화 방식은 크게 두 가지입니다. 첫번쨰 방법에서는 선언과 동시에 기본값을 저장합니다.그러면 새로운 인스턴스가 생성되는 시점에 자동으로 기본값이 저장됩니다. 그래서  Initializer에서 다시초기화 할 필요는 없습니다.
    var x = 0.0
    //두번째 방법은 Initializer 에서 초기화 합니다.이번에 생성한 y속성은 기본값을 가지고 있지 않습니다. 모든 속성은 초기화가 완료되면 기본값을 가져야 하는데 이런 규칙에 위배되고 에러가 발생하게 됩니다.에러 메시지를 보면 class가  Initializer를 가지고 있지 않다고 나옵니다
    var y: Double
    // Initializer 없이 선언과 동시에 값을 저장해보겠습니다.이렇게 모든속성이 기본값을 가지고 있고 이니셜라이저를 직접 구현하지 않는다면 Default Initializer 가 자동으로 제공됩니다. 우리말로는 기본생성자라고 부릅니다. 인스턴스를 생성하기 위해서는 Initializer로 호출해야 합니다.
    //만약 Default Initializer가 자동으로 제공되지 않는다고 하면 호출할 Initializer가 없죠.그래서 비어있는 이니셜라이저를 직접만들어야 합니다. 하지만 이런작업을 계속하면 귀찮으니 디폴트 Initializer 를 자동으로 생성해줍니다.
    var c: Double? = nil
    //속성을 옵셔널로 선언 하겠습니다. 기본값을 저장하고 있지 않지만 조금전과 같은 에러는 발생하지 않습니다. 옵셔널 속성은 기본값을 저장하지 않으면 자동으로 nil로 초기화 됩니다.
    var z: Double?
    // Initializer를 추가 하겠습니다.이렇게  Initializer 를 추가하고 속성의 기본값을 추가하면 정상적으로 초기화 됩니다.속성이 항상 동일한 값으로 초기화 된다면 주로 첫번째 방법을 구현합니다. 그리고 파라미터로 속성을 초기화 한다면 주로 두번째 방법을 씁니다.
    init() {
        y = 0.0
    }
    
}
//이렇게 Initializer를 호출하면 여기에서는 디폴트 Initializer 가 호출됩니다. 반대로 Initializer 를 직접 구현한다면 디폴트 Initializer 는 더이상 제공되지 않습니다. 이런경우에 파라미터가 없는 Initializer 가 필요하다면 직접 만들어야 합니다.
let p = position()





/*:
 ## Initializer Syntax
 ![initializer](initializer.png)
 ![call](call.png)
 */
//Initializer 구현 문법을 보겠습니다 Initializer는 항상 init 키워드로 시작합니다 이름이 없고 바로 파라미터를 선언합니다.파라미터 선언 문법은 메소드와 동일합니다 그리고 {}사이에 초기화 코드를 작성합니다.
//초기화는 가능한 빠르게 완료 해야 합니다 여기에서 초기화 와 관련 없는 코드를 작성하는 것은 피해야 합니다 Initializer 호출문법은 메소드 호출 문법과 유사 합니다. 메소드 이름대신 형식이름을 쓰면 Initializer가 호출됩니다 .
//파라미터가 없다면 형식이름 뒤에 () 를 써야하고 아규먼트를 전달할떄 아규먼트 레이블을 써야하는것도 메소드 호출 문법과 동일합니다.

//Initializer를 구현 해보겠습니다

class Sizeobj {
    var width = 0.0
    var height = 0.0
    //먼저 너비와 높이를 파라미터로 받는 Initializer 를 구현하겠습니다
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
        //지금처럼 파라미터 이름과 속성이름이 동일하다면 이렇게 self를 사용해야 합니다 문법이 메소드와 유사하기 떄문에 Initializer를 구현하는 것은 어렵지 않습니다.
    }
    //이번에는 파라미터를 하나만 받아서 두속성을 같은 값으로 초기화 하겠습니다.
    convenience init(value: Double) {
        //width = value
        //height = value
        //이렇게 구현해도 문제는 없습니다.하지만 초기화 코드는 가능하다면 중복을 없애야 합니다. 위에서 구현한 Initializer 호출하고 파라미터를 그대로 전달하면 되겠죠.
        self.init(width: value, height: value)
    }
}
//Initializer는 가능한 중복을 없애야 하고 다른 Initializer를 호출하는 패턴을 사용해야합니다. 이렇게 하나의 형식에서 여러 Initializer 를 구현할수 있는것은 Initializer가 오버로딩을 지원하기 떄문입니다. 이름과 리턴형이 없기 때문에 파라미터의 수와 자료형 아규먼트 레이블로 구분합니다.
//다양한 Initializer가 있는데 종류와 관계없이 형식내에서 유일하게 구분할수 있어야 합니다. 왜 Initializer의 종류를 구분하지 않는지는 Initializer의 호출문법을 생각하면 쉽게 이해됩니다 Initializer 의 종류에 따라서 호출문법이 달라지는 것은 아닙니다 항상 동일한 문법으로 호출하기 떄문에
//파라미터로 구분할수 밖에 없습니다.





/*:
 ## Memberwise Initializer
 */
struct SizeValue {
    var width = 0.0
    var height = 0.0
    //모든 속성이 기본 값을 가지고 있고 이니셜라이저를 구현하지 않았습니다 그러면 Default Initializer가 자동으로 제공됩니다.
    
}
let s = SizeValue()
//그래서 이렇게 인스턴스를 생성할수 있습니다 . 구조체는 여기에 더해서 Memberwise Initializer라는 특별한  Initializer 하나더 제공합니다.

//아규먼트 레이블을 보면 속성이름과 동일하고 파라미터 숫자도 속성 숫자와 동일합니다. 파라미터를 통해 모든 속성을 초기화 하기 떄문에 멤버와이즈 Initializer라고 부릅니다.
SizeValue(width: 1.2, height: 3.4)
//Default Initializer와 마찬가지로  Initializer 를 구현하지 않았을때 자동으로 제공됩니다. 구조체에서 Initializer를 직접 구현하면 더이상 사용할수 없습니다.



