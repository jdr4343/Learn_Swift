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
 # Initializer Syntax
 ![init](init.png)
 */
//새로운 인스턴스를 생성하는 방법
//생성자는 인스턴스를 만들떄 사용하는 특별한 메소드입니다. 메소드와 문법적으로 유사합니다. 생성자는 모든 속성에 초기값을 저장합니다. 이런 과정을 인스턴스 초기화라고 부릅니다. 초기화가 완료되지 않으면 컴파일 오류가 발생합니다.
//생성자는 init 키워드로 시작합니다. 이름을 가지고 있지 않기떄문에 바로 파라미터가 옵니다.그리고 생성자 바디에서는 속성을 초기화 하는 코드를 구현합니다.
//생성자는 속성 초기화가 가장 중요하고 유일한 목적입니다.

//문자열로 Int로 바꾸는 코드 입니다.이 코드는 생성자 문법으로 생성자를 호출합니다. Int형식이 제공하는 생성자는 파라미터로 전달한 문자열을 숫자로 바꿔서 새로운 인스턴스로 리턴합니다. 만약 문자열을 숫자로 바꿀수 없다면 nil을 리턴합니다.
let str = "123"
let num = Int(str)

//단순한 좌표를 저장하는 클래스와 생성자를 만들어 보겠습니다.
class Position {
    var x: Double
    var y: Double
    //모든 속성을 0으로 초기화 하는 생성자를 만들겠습니다.0으로 초기화하기 떄문에 파라미터는 필요하지 않습니다.
    init() {
        x = 0.0
        y = 0.0
        //생성자는 속성 초기화가 매우 중요하기 때문에 생성자 실행이 종료되는 시점에는 모든 속성에 초깃값이 저장되어 있어야 합니다.
    }
    //파라미터를 받는 생성자를 추가 해보겠습니다.
    init(value: Double) {
        x = value
        y = value
        //여기에서는 value 파라미터를 받아서 두 속성을 초기화 하고 있습니다.
    }
}
//클래스와 구조체,열거형에서 생성자를 구현할떄도 같은 문법을 사용합니다.

//생성자를 호출해서 인스턴스를 생성하겠습니다.생성자는 형식이름을 사용합니다.
//파라미터가 없는 생성자 호출,형식이름 포지션을 쓴다음에 괄호를 씁니다. 이렇게 하면 새로운 인스턴스가 생성되어서 a라는 상수에 저장됩니다.
let a = Position()
//호출
a.x
a.y
//두번쨰 생성자를 호출하고 파라미터로 100을 전달하겠습니다.
let b = Position(value: 100)
b.x
b.y


//열거형,구조체,클래스는 모두 설계도 입니다.
//설계도에 따라서 인스턴스를 만들기 위해서는 초기화 과정이 반드시 필요합니다.
//생성자를 호출하면 초기화가 시작되고 생성자 실행이 완료되면 모든 속성이 초기화 됩니다.
//에러없이 초기화가 완료되면 인스턴스가 생성됩니다.

/*:
 ![call-init](call-init.png)
 */















