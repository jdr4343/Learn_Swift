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
 # Property Observer
 ![property-observer](property-observer.png)
 */
//속성감시자를 통해 속성 값이 변경될때 실행할 코드를 구현하는 방법에 대해 알아봅시다.
//willSet 블록은 이름처럼 속성의 값이 저장되기 직전에 호출됩니다. 파라미터 이름을 생략한 newValue가 기본 파라미터로 제공 됩니다.
//didSet 블록은 값이 저장된 직후에 호출됩니다. 이시점에는 속성이 새로운 값이 저장되어 있습니다.그래서 didSet블록에는 이전값이 파라미터로 전달됩니다. 파라미터 이름을 생략한 oldValue가 기본 파라미터로 제공 됩니다.
//Property Observer는 변수 저장속성에 추가 할수 있습니다.
//지연 저장 속성과 계산속성에도 Property Observer를 추가할수 없습니다.
//그렇다고 속성을 감시할수 없는것은 아닙니다. 지연저장 속성의 경우 초기화 코드에서 원하는 기능을 구현하면 되고 계산 속성은 set블록에서 필요한 코드를 구현합니다.
//계산 속성은 한가지 예외가 있습니다. subclass에서 계산 속성을 오버라이딩하고 여기에 Property Observer를 구현하는 것은 가능합니다.
// willSet 블록과 Didset블록은 모두 필수 요소는 아니지만 모든블록을 생략하는것은 불가능합니다. Property Observer가 되기 위해선 반드시 두블럭중에 하나는 구현해야 합니다.

class Size {
    var width = 0.0 {
        willSet {
            print(width, "=>", newValue)
        }
        didSet {
            print(oldValue, "=<", width)
        }
    }
}
//속성이 변경되는 시점에 실행하고 싶다면 Property Observer 속성을 추가합니다.한번 추가해보겠습니다.

let s = Size()
s.width = 124
