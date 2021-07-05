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
 # switch
 ## Syntax
 ![switch-syntax](switch-syntax.png)
 */
//값의 일치 여부를 확인함 valueExpression 여기에 비교 대상이 옵니다 비교대상은 정수가 될수도 있고 문자열이 될수도 있고 아니면 다른 값이 올수도 있습니다.
//case의 pattern은 valueExpression을 평가한 값과 비교할 값입니다. 두값이 동일하다면 srarements가 실행됩니다. 두값이 일치하지 않는다면 이어지는 case블록과 비교하거나 default  블록을 실행합니다.
let num = 1

switch num {
case 1:
   print("one")
case 2, 3:
   print("two or three")
default:
   print("others")
}


/*:
 ## Syntax
 ![where](where.png)
 */
//패턴에 조건을 추가하는 문법입니다. 패턴다음에 where 키워드를 쓴다음 패턴을 대상으로 확인할 조건을 작성합니다. 이렇게 하면 단순히 패턴매칭을 수행하는 것이 아니라 케이스의 패턴이 매칭 되었을떄 컨디션을 통해서 한번더 확인합니다. 그러면 이케이스 블럭이 실행되는 조건은 패턴이 일치하고 컨디션이 트루로 평가되는 시점입니다. 만약에 패턴이 일치하더라도 컨디션이 false로 평가된다면 케이스 블록은 실행되지 않습니다.
switch num {
case let n where n <= 10:
   print(n)
default:
   print("others")
}
var cum = 101
switch cum {
case let c where c == 100:
    print(c)
default:
    print("No")
}


//: [Next](@next)
