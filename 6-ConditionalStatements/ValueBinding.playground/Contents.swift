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
 # Value Binding Pattern
 ## Syntax
 ![value-binding](value-binding.png)
 */
//스위치 문에서 value binding을 허용하는 방법
let a = 1
switch a {
case let x:// 스위치 문에서 매칭시킬 상수를 a상수로 지정하고 있습니다.그리고 case블럭에서 a상수를 x라는 이름으로 바인딩 하고 있습니다. 그러면 x라는 이름의 상수가 새롭게 생성이 되고 여기에는 a상수에 저장되어 있는값이 복사됩니다.
    print(x)
    // 여기서 한가지 기억해야할점은 바인딩된 상수를 케이스블럭 내부에서만 사용할수 있습니다.주로 where 절과 함께 사용합니다.
}
let nm = 12342
switch nm {
case let s where s > 9000:
    print("s is batter then 9000")
default:
    break
}
// 값을 바꿔야 한다면 변수로 바인딩 해야합니다.
var ty = 3900

switch ty {
case var r where r < 9000:
    r = 9000
    print("wow")
default:
    break
}
//value binding은 튜플에도 많이 사용됩니다.
let pt = (1, 2)

switch pt {
case let (x, y):
    print(x, y)
    fallthrough
case (let x, let y):
    print(x, y)
    fallthrough
case(let x, var y)://하나의 값을 변수로 바인딩
    print(x, y)
    fallthrough
case let (x, _)://하나의 값만 바인딩
    print(x)
}

















