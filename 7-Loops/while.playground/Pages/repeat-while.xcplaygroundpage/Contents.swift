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

//: [Previous](@previous)

import Foundation

/*:
 # repeat-while
 
 ## Syntax
 ![repeat-while](syntax-repeat-while.png)
 */
var num = 100
while num < 100 {
    num += 1
}
num
//while 문 num이라는 변수에 100인 경우 while문이 종료됨



num = 100
repeat {
    num += 1
    
}while num < 100
num
//repeat while문을 실행시키면 일단 실행시킴 num 에 100이 저장되면 종료 됨 컨디션에 관계 없이 먼저 실행하기 떄문에 값이 달라 질수 있음
//조건을 먼저 사용해야된다면 repeat while문 코드를 먼저 실행해야 된다면 일반 while문을 쓰면 된다.













