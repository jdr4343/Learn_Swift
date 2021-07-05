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
 # Arithmetic Operators
 */
// 산술 연산자
//프로그래밍에서는 제약이없음
let a = 12
let b = 20
let c = "hello"
let v = " "
let q = "jihun!"
c + v + q
a + b

/*:
 ## Unary Plus Operator
 ````
 +a
 ````
 */
+a
+b
//이 연산자는 초기값을 그대로 돌려주기 떄문에 사용성이 없으니 이론만 알고 있으면 됨


/*:
 ## Addition Operator
 ````
 a + b
 ````
 */

a + b

/*:
 ## Unary Minus Operator
 ````
 -a
 ````
 */
//음수 저장,음수는 양수로 바꿔주고 양수는 음수로 바꿔줌
-a


/*:
 ## Subtraction Operator
 ````
 a - b
 ````
 */

a - b

/*:
 ## Multiplication Operator
 ````
 a * b
 ````
 */
//곱하기
a * b


/*:
 ## Division Operator
 ````
 a / b
 ````
 */

b / a

let g = Double(a)
let f = Double(b)
g / f
/*:
 ## Remainder Operator (Modulo Operator)
 ````
 a % b
 ````
 */
//나머지 연산자 나누기를 한후 남은 숫자

b % a
//g % f 나머지 연산자는 정수만 지원함
g.truncatingRemainder(dividingBy: f)
//실수를 나머지 연산자를 사용 하고 싶다면 truncatingRemainder 메소드를 사용해야함

/*:
 ## Overflow
 */




let num: Int8 = 9 * 9 // * 9
//자료형에 저장할수 있는 값을 벗어나는 걸 오버플로라고 부름
