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
 # Expression Pattern
 */
let a = 1
switch a {
case 0 ... 10:
    print("0 ... 10")
case 11 ... 20:
    print("11 ... 20")
case 21 ... 30:
    print("21 ... 30")
default:
    break
}


/*:
 ## Pattern Matching Operator
 ````
 a ~= b
 ````
 */
//인터벌 매칭 구현
struct  Size {
     var width = 0.0
     var height = 0.0
    //패턴 매칭 오버로딩
    //패턴 매칭 연산자를 오버로딩 할때는 파라미터의 자료형과 순서가 정말 중요합니다. 첫번쨰 파라미터의 자료형은 케이스 키워드 다음에 오는 패턴의 자료형으로 지정해야 됩니다.여기에서 케이스 키워드 다음에 오는 자료형은 에러 메세지를 보면 나와 있습니다 자료형의 이름은 Range 이고 Range는 제네릭클래스 이고 형식 파라미터가 Int로 지정되어 있습니다. 여기에서 첫번째 파라미터의 자료형을 에러에 나와있는 형식으로 지정해야 됩니다.그리고 두번쨰 파라미터는 스위치 키워드 다음에 오는 밸류 익스프레션 입니다. 밸류 익스프레션의 자료형을 두번째 파라미터의 자료형으로 지정해야 합니다.그런 다음 리턴형을 Bool로 선언 합니다. 여기에서는 width 속성에 저장되어 있는 값이 범위에 속하는 경우에 패턴매칭이 성공 했다고 가정하겠습니다.
    //아래의 코드를 보면 첫번째 파라미터로 전달된 범위에 두번째 파라미터에 전달된 사이즈에 width속성의 값이 포함되어 있다면 true가 리턴이 됩니다.
    static func ~=(left: Range<Int>, right: Size) -> Bool {
    return left.contains(Int(right.width))
    }
}

let s = Size(width: 10, height: 20)

switch s {// 사이즈 구조체를 패턴매칭해서 사용할수 없기 떄문에 오류가 남 패턴매칭 오버로딩해서 어떻게 매칭 시켜야 할지 알려줘야 합니다.
case 1..<9:
print("1 ... 9")
case 10..<99:
    print("10 ... 99")
default:
    break
}
