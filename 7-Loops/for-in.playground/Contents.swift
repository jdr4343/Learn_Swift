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
// for in 반복문










/*:
 ## Syntax
 ![syntax](syntax-range.png)
 */
/*for 반복상수 in 범위 {
    문장
}*/
for index in 1...10 {
    print(index)
}


for _ in 1 ... 5 {
print("Hello")
}

let power = 10 //반복할 횟수
var result = 1// 계산될 결과를 저장할 변수

for _ in 1 ... power {
    result *= 2
}
result
//2의 제곱
//짝수만 반복하기
for num in stride(from: 0, to: 10, by: 2) {//여기에서 핵심은 stride 함수입니다 첫번쨰 파라미터에는 시작할 범위를 전달하고 두번째 파라미터에는 종료할 범위를 전달합니다. 종료할 범위는 실제 범위에는 포함 되지 않습니다. 그래서 실제 어퍼 바운드는 10이 아니라 9가 되는거죠 마지막 파라미터가 가장 중요합니다. 지금처럼 2를 전달하면 from에서 2씩 증가하는 새로운 시퀀스가 리턴이되고 이시퀀스를 for in 반복문이 반복하게 됩니다.
print(num)
}
/*:
 ## Syntax
 ![syntax](syntax-collection.png)
 */
//for in 반복문은 범위 연산자로 지정한 범위만 반복할수 있는것은 아닙니다. 배열이나 딕션아리 같은 컬렉션도 반복 할수있구요 컬렉션에 포함된 요소를 반복하는 것을 컬렉션을 열거 한다고 표현 합니다. 문법은 앞에서 공부한 문법과 차이는 없습니다. 단지 레인지 부분이 컬렉션으로 바뀐것 뿐 입니다

let list = ["Apple", "Banana", "Orange"]

for fruit in list {
    print(fruit)
}



//구구단 출력
for i in 2 ... 9 {
    for j in 1 ... 9 {
        print("\(i) * \(j) = \(i * j)")
    }
}
// for in 반복문은 지정된 범위 만큼 반복하거나 컬렉션을 열거 할수 있다 for in 얼마든지 중첩하여 사용할수 있다
