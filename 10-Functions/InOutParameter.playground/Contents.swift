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
 # In-Out Parameters
 */
// 입출력 파라미터
// 파라미터로 전달된 변수의 값을 함수 내부에서 직접 변경하는 방법
var num1 = 12
var num2 = 34

func swapNumber(_ a: Int, with b: Int) {
//var tmb = a
}
swapNumber(num1, with: num2)
//  복사본이 전달되는 이유는 Int가 값형식이기 때문입니다.복사본이 전달되기 떄문에 함수바디에서 바꾼다고 해서 실제로 두변수에 저장되어 있는 값은 불가능합니다.



/*:
 ## Syntax
 ![inout-def](inout-def.png)
 ![inout-call](inout-call.png)
 */
func swapNumber(_ a: inout Int, with b: inout Int) {
    let tmb = a
    a = b
    b = tmb
}
num1
num2

swapNumber(&num1, with: &num2)

num1
num2
//함수가 모두 실행이되고 종료가 되면 함수에서 변경한 값이 아규먼트로 전달한 값에 복사 됩니다. 이과정은 카피 아웃입니다.
//함수 바디 내부에서 외부로 복사됩니다. 그래서 카피 아웃입니다. num1에 저장되어 있는 값이 a로 전달이됩니다.


let a = 12
let b = 34
//immutable 값을 바꿀수 없다.

//가변 파라미터에서는 인아웃 파라미터를 사용하지 못합니다.
