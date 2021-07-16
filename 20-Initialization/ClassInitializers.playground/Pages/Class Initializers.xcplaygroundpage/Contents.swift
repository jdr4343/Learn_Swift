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
 # Designated Initializer
 ![designated](designated.png)

 # Convenience Initializer
 ![convenience](convenience.png)
 */
//클래스에서 구현하는 특별한 생성자에 대해 공부합시다.

//Designated Initializer 지정 생성자 는 메인 Initializer 입니다. 여기서 말하는 메인은 클래스가 가진 모든 속성을 초기화 한다는 뜻입니다.
//class 에서 Initializer를 생성할 경우 한가지 역활이 추가됩니다. Initializer 실행이 완료되기 전에 슈퍼 클래스에 Designated Initializer 를 추가 해야합니다.이것을 Initializer Delegation이라고 합니다.
//class 에서 구현할수있는 Designated Initializer 수에는 제한이 없으나 대부분의 경우하나만 구현 합니다 default Initializer를 사용하거나 superClass 로부터 Designated Initializer 를 상속했다면 Designated Initializer 직접 구현할 필요는 없습니다. 하지만 나머지 경우에는 하나이상의 Designated Initializer 가 필요합니다.

class Position {
    var x: Double
    var y: Double
    //지금 에러가나는 이유는 두가지 입니다.모든 속성이 기본값을 가지고 있지않고 생성자를 구현하지 않았기 때문입니다 여기에 모든 속성을 초기화 하는 Designated Initializer 를 구현 하겠습니다.
    init(x: Double, y:Double) {
        //파라미터 이름과 속성이름이 동일하기 때문에 self를 사용해야 합니다.
        self.x = x
        self.y = y
        //핵심은 모든 속성을 초기화 해야합니다.
    }
}


//Convenience Initializer 간편 생성자
//init 키워드 앞에 Convenience가 추가되는걸 빼면 문법적인 차이는 없습니다.
//Convenience Initializer는 다양한 초기화 방법을 구현하기 위한 유틸리티 성격의 Initializer 입니다.
//Designated Initializer 와는 달리 모든 속성을 초기화 해야하는것은 아닙니다. 보통 필요한 속성만 추가한다음에 class 에 있는 다른 Initializer를 호출해서 나머지 초기화를 완료 하도록 구현합니다.
//class가 상속관계에 포함되어 있는 경우를 생각해보겠습니다. Designted Initializer는 슈퍼클래스에 Designted Initializer 를 호출해야 합니다 반면 Convenience Initializer는 슈퍼클래스에 있는 Initializer 를 호출할수 없습니다.
//반드시 동일한 클래스에 있는 Initializer를 호출해서 최종적으로 Designted Initializer가 호출되도록 구현해야 합니다.

//x만 초기화하는 Convenience Initializer 구현해보겠습니다.
class num {
    var x: Int
    var y: Int
    
    init(x:Int, y:Int) {
        self.x = x
        self.y = y
    }
    convenience init(x: Int) {
        self.init(x: x, y: 2)
        //만약 여기에서 직접 x 속성을 초기화 하면 Designated Initializer에 있는 코드와 중복됩니다.그래서 Designated Initializer로 호출한다음에 x에는 파라미터를 그대로 전달하고 y에는 기본값을 전달하고 있습니다.이렇게 하면 초기화 코드가 중복되지 않습니다.
        //Convenience Initializer 는 보통 이런 패턴으로 구현합니다. Initializer를 호출하는 문법은 동일합니다. 
    }
}









//: [Next](@next)

