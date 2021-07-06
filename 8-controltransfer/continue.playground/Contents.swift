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
 # continue
 */
//컨티뉴를 호출했을떄 무엇을 종료하고 계속하는지만 구분하면 됩니다.
//반복문에서만 사용됨.
for index in 1...10 {
print(index)
    if index % 2 == 0 {
        continue
    }
    print(index)
}

//현재 반복을 종료하고 다음 반복을 진행합니다.

for i in 1...10 {
    print("Other", i)
    for j in 1...10 {
        if j % 2 == 0 {
            continue
        }
        print("inner", j)
    }
}

//컨티뉴는 현재 실행중인 반복을 종료하고 다음 반복을 실행한다.
//컨티뉴는 가장 인접한 문장에 입력된다.



















