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

import UIKit

/*:
 # Optionals
 */
//값이 없다는 것, 값이 없다는걸 표현할 방법이 필요한데 noneOptionals 타입에서는 불가능 합니다.옵셔널은 이문제를 해결해줍니다.
let OptionalNum: Int? = nil
//nil은 추론할 타입이 없기 떄문에 nil로 초기화 할떄는 꼭 타입을 정해주어야 합니다.













/*:
 ## Optional Type
 ![optional-type-syntax](optional-type-syntax.png)
 */
let str: String = "Swift"
let optionalstr: String? = nil

let a: Int? = nil
let b = a
//nonOptional Type에는 항상 값이 가져야 한다.
//Optional Type은 값을 가지지 않아도 된다.기존 자료형에 ? 를 붙이게 되면 옵셔널 타입이 된다.





//: [Next](@next)
