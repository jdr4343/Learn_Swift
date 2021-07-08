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
 # Return Values
 ![return](return.png)
 */
// 값을 리턴하는 방법

func add() -> Int {
    return 1 + 2
}
add()

let r = add()

r
//함수 호출식은 표현식이고 함수가 리턴하는 값은 표현식의 결과가 된다.
if add() == 3 {
    print("Three")
}

//함수에서 리턴형을 선언했다면 리턴문을 통해 반드시 값을 리턴해야한다
//함수가 리턴한 값은 함수를 호출하는 부분으로 전달된다

func doSomeThing() {
    let rnd = Int.random(in: 1...10)//1...10까지의 랜덤 함수
    if rnd % 2 == 1 {
    return
    }
    print(rnd)
}


doSomeThing()
doSomeThing()
doSomeThing()
















