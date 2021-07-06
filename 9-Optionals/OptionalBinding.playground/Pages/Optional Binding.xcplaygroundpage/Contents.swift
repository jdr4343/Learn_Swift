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
import Foundation

/*:
 # Optional Binding
 */
var num: Int? = nil


/*:
 ## Syntax
 ![optional-binding-syntax](optional-binding-syntax.png)
 */

//옵셔널 바인딩은 조건문들에서 사용하고 바인딩은 먼저 옵셔널표현식을 평가하고 값이 리턴이 된다면 언래핑 되어서 상수에 저장이 됩니다. 이 상태가 바인딩이 성공한 상태 입니다.반대로 옵셔널표현식에 nil이 저장되어 있다면 리턴이 실패하고 다음문장으로 넘어갑니다.
if num != nil {
    print(num!)
// num 자료형 Int?
}else{
    print("empty")
}

//아래의 문장이 더 안전하기 떄문에 아래 문장을 쓰는것이 좋다.
if let num = num {
    print(num)
//num 자료형 Int
    
}else{
    print("empty")
}

let str: String? = "str"

guard let str = str else {
    fatalError()
}
str

num = 123
if var num = num {
    num = 456
    print(num)
}


let a: Int? = 12
let b: String? = "str"

if let num = a, let str = b, str.count > 1 {
    //이 이프문에선 문장에 있는 모든 바인딩이 성공할경우에만 실행됩니다.
    print("I'M")
}









































