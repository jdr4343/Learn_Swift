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

import Foundation

/*:
 # Any, AnyObject
 */
//범용 자료형 코드의 유연성을 높여주는 장점이 있습니다. 하지만 남용할경우 코드의 가독성이 떨어지고 유지보수가 않좋아합니다.
//Any는 모든 형식을 저장 할수있고 모든 클래스 형식을 저장할수 있습니다.
var data = 1
//Int 형식엔 Int 밖에 저장할수 없습니다. 하지만 Any를 사용할경우 형식에 관계 없이 모든 자료형을 저장할수 있습니다.
var num: Any = 1
num = "신지훈"
num = [1, 2, 3]
num = NSString()
//Any는 값형식, 참조형식을 가리지 않습니다.

//AnyObject는 참조 형식만 저장할수 있습니다.
var obj: AnyObject = NSString()
//클래스를 저장하고 값형식을 다시 저장Type Casting Pattern해보면 에러가 발생합니다.
//obj = 1

//Any와AnyObject는 Type-Erasing Wrapperor 이름 그대로 형식에 대한 정보를 가지고 있지 않습니다. 그래서 인스턴스를 사용하기 위해서는 타입캐스팅이 필요합니다. 예를 들어 데이터 변수에 문자열이 저장되어 있다면 문자열에 길이를 출력한다고 가정해보겠습니다.
if let str = num as? String {
    print(str.count)
    //만약에 배열이 저장되어 있을때 실행할 코드를 구현한다면
}else if let list = data as? [Int] {
//이렇게 타입캐스팅을 하나더 추가합니다.
}

//이렇게 String으로 타입캐스팅 한다음에 카운트 속성에 접근해야 합니다. Any, AnyObject 를 구현할때에는 대부분 이런 형태로 구현합니다.

/*:
 # Type Casting Pattern
 */
//Typee Casting Pattern 으로 위의 코드를 구현하면 상대적으로 깔끔 해집니다. Typee Casting Pattern 은 스위치문과 타입캐스트를 함께 사용합니다.
//앞에 구현했던 코드를 Typee Casting Pattern으로 구현해보겠습니다.
switch num {
case let str as String:
    print(str.count)
case let list as [Int]:
    print(list.count)
case is Double:
    print("Is Double")
default:
    break
}

//먼저 첫번쨰 케이스는 스트링으로 캐스팅되는 값을 매칭시킵니다. 값이 매칭되었다면 str상수에 바인딩합니다.
//두번째 케이스는 Int 배열로 매칭된 값을 list 에 바인딩 합니다.보통 as 연산자를 사용하지만 is 연산자를 사용하는것도 가능합니다.
//Type Casting Pattern은 범용형식으로 저장되었거나 upcasting된 인스턴스를 매칭시킬때 주로 사용됩니다.













