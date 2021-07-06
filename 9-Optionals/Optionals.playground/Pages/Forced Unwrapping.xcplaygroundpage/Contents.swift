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

//: [Previous](@previous)

import Foundation

/*:
 # Unwrapping
 */

var num: Int? = nil
print(num)

num = 123
print(num)

let nnum = 123
print(nnum)
print(num)
//값이 랩으로 포장되어 있는 느낌 실제로 저장된 값이 필요하다면 랩을 벗겨야합니다. 이과정을 UNwrapping 이라고 합니다.




/*:
 ## Forced Unwrapping
 ![forced-unwrapping](forced-unwrapping.png)
 */
//강제 추출

print(num!)

num = nil
//값이 없을떄는 강제 추출 할수 없다. 값이 저장되어 있는지 확인하는게 안전함
if num != nil {
    print(num!)
//!=   값이 같지 않다!
}
//num에 저장된 값이 nil이 아닌지 확인한 다음 강제추출 하면 꺼낼값이 있을떄만 강제 추출합니다. 오류를 방지 할수 있습니다.

num = 123
let before = num
let after = num!//여기에서 옵셔널 표현식을 언래핑 하고 있습니다. 이렇게 하면 noneOptional타입으로 결과가 리턴이되고 최종적으로 after 상수에는 옵셔널 특성이 제거된 실제값 123이 저장됩니다. 그래서 after의 자료형이 Optional Int 형이 아니라 그냥 자료형이 됩니다.
//자료형을 보면 before의 자료형을 보면 Optional Int? 이고 after의 자료형을 보면 그냥 Int 입니다.실제 프로그래밍에서 강제 추출은 가능하다면 사용하지 않는게 좋습니다.

//옵셔널에 저장된 값을 사용하려면 반드시 값을 언래핑 해야한다.
//nil이 저장되어 있는 상태에서 값을 강제 추출 하면 크래시가 발생한다.
//옵셔널 표현식을 언래핑 하면 논옵셔널 타입으로 결과가 리턴된다.





