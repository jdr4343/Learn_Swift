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
 # Value Types and Reference Types
 ![val-ref](val-ref.png)
 */
//값형식과 참조형식이 어떤 차이점이 있는지.
//값 형식: 구조체, 열거형, 튜플, 기본자료형, 컬렉션
//참조 형식: 클래스, 클로저

//좌표를 저장하는 구조체와 클래스를 만들겠습니다.
//속성은 선언과 동시에 기본값을 저장하고 있습니다.이렇게 하면 파라미터가 없는 생성자가 자동으로 제공되는데 이것을 기본 생성자라고 합니다.
struct PositionValue {
    var x = 0.0
    var y = 0.0
}
class PositionObject {
    var x = 0.0
    var y = 0.0
}
//기본생성자를 호출하여 인스턴스를 만들겠습니다
var v = PositionValue()
var o = PositionObject()

//새로운 변수를 선언한 다음에 v와 o에 저장되어 있는 값으로 초기화 하겠습니다.
var v2 = v//복사본 생성
var o2 = o//메모리 주소 저장

//v2에 저장되어 있는 속성을 다른 값으로 바꾸겠습니다.
v2.x = 12
v2.y = 34
v
v2
//v와 v2에 저장되어 있는 값을 확인해보면 v2에는 방금 바꾼 값이 저장되어 있지만 v에는 0이 저장되어 있습니다.
//var v2 = v 여기에서 v2에 v를 저장하고 있는데 구조체는 값형식이기떄문에 v2에 저장되어 있는 값은 v와 같은 값을 가진 복사본입니다. 그래서 v2에서 속성을 바꿔도 v에는 아무런 변화가 없습니다

//o2에 저장되어 있는 속성을 바꾸겠습니다
o2.x = 12
o2.y = 34
o
o2
//같은 방법으로 값을 확인해 보면 o2에는 방금 바꾼 값이 저장되어 있습니다.그리고 o에도 같은 값이 저장되어 있습니다.클래스는 새로운 복사본을 생성하지 않고 원본(참조)을 전달합니다.원본이 전달되기 떄문에 어떤 변수를 통해서 속성을 바꾸더라도 항상 같은 대상을 바꾸게 됩니다.
//이것이 값형식과 참조형식의 가장 큰 차이 입니다.


//객체지향 프로그래밍에서는 대부분 참조 형식인 클래스로 구현합니다. 상대적으로 적은데이터를 저장하고 상속이 필요하지 않다면 값형식으로 구현 합니다. 값이 전달되는 시점마다 복사본이 생성되어야 하는 경우에도 마찬가지로 값형식으로 구현합니다.연관된 상수 그룹을 표현할떄는 열거형으로 구현하고 코드내에서 한번만 사용되는 형식은 튜플로 구현합니다. 나머지 값형식은 모두 구조체로 구현합니다. 상속을 구현해야하거나 참조를 구현해야하는 경우에만 클래스로 구현합니다.
