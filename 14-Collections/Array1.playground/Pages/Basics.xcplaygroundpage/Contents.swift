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
 # Array Basics
 ## Creating an Array
 */
//배열 생성 배열 리터럴을 사용해 정수배열 생성
let nums = [1, 2, 3]
//빈 리터럴 생성, 형식 추론을 사용할수 없기 때문에 자료형을 지정해줘야함
let emptyArray: [Int] = []

//생성자를 사용해 생성, 정식 문자열
let emptyArray2 = Array<Int>()
//단축 문자열
let emptyArray3 = [Int]()

//배열을 만든다음에 기본값으로 채워 보겠습니다.
//repeating,count 생성자를 사용하는데 repeating은 배열을 채울 기본값을 전달하고 count에는 배열에 채울 요소를 전달합니다
let zeroArray = [Int](repeating: 0, count: 10)
//0이 열개가 채워진 Int 배열입니다.
/*:
 ## Inspecting an Array
 */
//count 속성은 저장된 요소의 숫자를 정수로 리터럴 해줍니다.
nums.count
//배열이 비었는지 확인 하고 싶다면 0 과 비교하면 됩니다.
nums.count == 0
nums.isEmpty
emptyArray.isEmpty
/*:
 ## Accessing Elements
 */
//배열에 저장된 요소에 접근해보겠습니다.
//문자열 배열 생성
let fruits = ["Apple", "Banana", "Melon"]
//배열에 저장된 문자열에 접근할때에는 subscript 문법을 사용합니다.
//배열에 저장된 첫번쨰 문자에 접근
fruits[0]
//배열 인덱스는 항상 0 부터 시작함
//배열에 저장된 마지막 요소에 접근
fruits[2]

//범위 전달
fruits[0...1]

//속성을 사용해서 첫번쨰 요소에 접근
fruits[fruits.startIndex]
//마지막 요소에 접근
//endIndex 마지막 index의 다음 인덱스 입니다. 마지막 인덱스가 아니기 떄문에 마지막 수에 접근하기 위해서 endIndex 이전 index를 구한 다음에 접근해야 합니다. 그래서 index(before:)메소드를 사용해서 마지막 인덱스의 이전 인덱스를 구한다음 사용해야합니다.
fruits[fruits.index(before: fruits.endIndex)]

//첫번쨰나 마지막이라면 속성을 통해서도 접근 할수 있습니다.
fruits.first
fruits.last

//비어있는 배열에서 사용, 배열이 비어있기떄문에 nil
emptyArray.first
emptyArray.last
//emptyArray[0] error






