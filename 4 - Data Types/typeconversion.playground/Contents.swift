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
 # Type Conversion
 
 ## Syntax
 ![TypeConversion](type-conversion.png)
 */
// 타입 컨버전과 타입 캐스팅은 완전히 다름 둘이 같은 언어로 변형되긴하나
//타입 컨버전은 메모리에 저장된 값을 다른 형식으로 바꿔 새로운 값을 생성 합니다.
//반면 타입 캐스팅은 메모리에 저장된 값을 그대로 두고 컴파일러가 다른 형식으로 처리하도록 처리합니다.

let a = 123
let b = 4.56
 Double(a) + b
a + Int(b)
let result = Int8(a)

let d = Int.max
//let e = Int8(d) 심각한 에러가 발생함 큰 메모리에서 작은 메모리로 타입컨버전 할때는 조심 해야됨

let str = "number"
let num = Int(str)
//문자는 숫자로 바뀔수 없기 떄문에 값이 없다 닐이 출력되게 됨
//반면 문자의 수를 세는 카운트를 입력할경우 문자의 수인 6으로 컨버전 되는걸 볼수 있음












