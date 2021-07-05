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
 # Range Operators
 */
// 범위 연산자
//1 ~ 6 , 10 ~ 110 == 1 ... 6, 10 ... 110
/*:
 ## Closed Range Operator
 ````
 a ... b
 a...
 ...a
 ````
 */
//다낭 연산자로 사용하게 된다면 공백없이 붙여 써야됨
1 ... 10
 // 10 ... 1 내림차순 범위를 쓴다면. 리버스 메소드를 사용해 뒤집으면 됨
(1 ... 10).reversed()

12.34 ... 20.23
var sum = 0

for num in 1 ... 10 {// 반복 횟수
    num
    sum += num
    
}
sum

let list = ["A", "B", "c", "d"]
list[2...]
list[...2]
//범위값 설정도 가능
/*:
 ## Half-Opern Range Operator
 ````
 a ..< b
 ..<a
 ````
 */
//어퍼 바운드가 포함되지 않게 하는경우

sum = 0

for num in 1 ..< 10 {
    sum += num
}
sum

list
list[..<2]
 
//for num in ..<10 {
    //이항연산자는 가능 하나 다난연산자로 사용 하는건 불가능함

let range = 1 ... 5
range.contains(7)
range.contains(1)
range.contains(-1)








