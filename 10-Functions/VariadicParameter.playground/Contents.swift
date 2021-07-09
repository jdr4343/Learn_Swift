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
 # Variadic Parameters
 ![variadic](variadic.png)
 */
//가변 파라미터
print("Hello")

print("Hello", "swift")
// 일반 파라미터는 전달가능한 아규먼트가 하나로 고정되지만 가변파라미터에서는 하나이상의 아규먼트를 전달할수 있습니다. 전달 가능한 아규먼트가 수가 고정적이지 않고 가변적이기 때문에 가변 파라미터라고 부릅니다.
//공백없이 ...피리어드가 따라오고 가변파라미터로 선언됩니다. 가변 파라미터는 아규먼트를 함수내부로 전달할때 배열형태로 전달합니다.

func printSun(of nums: Int...) {
    var sum = 0
    for num in nums {
        sum += num
    }
    print(sum)
}

printSun(of: 1, 2, 3)

printSun(of: 1, 2, 3, 4, 5)
//하나의 파라미터로 두개 이상의 아규먼트를 전달 할수 있다.그리고 아규먼트는 배열 형태로 전달된다.
//



func printSum(of nums: Int..., b: Double...) {// 가변 파라미터는 하나만 허용됩니다. 개별함수마다 하나씩만 선언 할수 있습니다. (라고 하는데 패치 되었는지 되는거 같습니다.)
    var sum = 0
    for num in nums {
        sum += num
    }
    print(sum)
}


//func printSm(of nums: Int... = 0) {          가변 파라미터는 기본 값을 가질수 없습니다. 
 









