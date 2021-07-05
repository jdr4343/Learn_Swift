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
 # Logical Operators
 */
// 참과 거짓을 구분 하는 연산자 모든 연산의 결과 값은 불린임

/*:
 ## Logical NOT Operators
 ````
 !a
 ````
 */
!true
//참과 거짓 결과를 뒤바꿈
let a = 12
let b = 35
a > b
!(a > b)
//결과를 뒤집을 표현식을 괄호로 감싸줘야함
/*:
 ## Logical AND Operators
 ````
 a && b
 ````
 */
a > 8 && b > 34
// 앤드 연산자는 두 값이 모두 트루 여야 트루를 리턴함

true && true
!(true && true)
false && true
true && false

/*:
 ## Logical OR Operators
 ````
 a || b
 ````
 */
//두 값중 하나만 트루 면 트루를 리턴함
 true || true
true || false
false || false















