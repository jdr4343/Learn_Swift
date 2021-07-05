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
 # Overflow Operators
 */
// 산술 연산자
Int8.min
Int8.max

//let num: Int8 = Int8.max + 1 값의 번호를 넘어가는 숫자를 오버플로 라고 함
//Swift 산술 연산자는 오버플로를 허용하지 않음 오버플로를 사용하고 싶다면 아래 엔퍼센트 문자가 필요합니다
/*:
 ## Overflow Addition Operator
 ````
 a &+ b
 ````
 */
let a: Int8 = Int8.max
let b: Int8 = a &+ 1//a + 1
//보다 시피 - 128이 나왔음 메모리 값에서 비트를 한자리 올렸기 때문임

/*:
 ## Overflow Subtraction Operator
 ````
 a &- b
 ````
 */
let c: Int8 = Int8.min
let d: Int8 = c &- 1


/*:
 ## Overflow Multiplication Operator
 ````
 a &* b
 ````
 */

let e: Int8 = Int8.max &* 2





