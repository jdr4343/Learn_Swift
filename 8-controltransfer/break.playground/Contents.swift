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
 # break
 */
// 이름 그대로 코드의 실행을 중지합니다. 현재 실행중인 문장을 중지하고 이어지는 다음 문장을 실행합니다.
//반복문과 스위치 문에 실행함
let num = 2

switch num {
case 1 ... 10:
    print("dfjaskdf")
    
    if num % 2 != 0 {
        break
    }

print("end block")
default:
break
}
print("done")


for index in 1 ... 10 {
    print(index)
    if index > 1 {
        break
    }
}

for i in 1...10 {
    print("Outer loof", i)
    
    for j in 1...10 {
        print(" inner loop", j)
        
        if j > 1 {
            break
        }
    }
}






















