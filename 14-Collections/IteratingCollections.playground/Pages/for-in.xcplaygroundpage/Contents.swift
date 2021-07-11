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
 # Iterating Collections
 
 ## for-in
 ![for-in](for-in.png)
 */
//컬렉션 열거
//컬렉션을 저장된 모든 요소를 대상으로 반복작업을 한다
//Array
//배열을 fot in 반복문으로 열거하면 배열에 저장된 요소만큼 반복됩니다. 그리고 배열에 저장된 요소는 순서대로 하나씩 루프 상수로 전달됩니다.
 let arr = [1, 2, 3]
for num in arr {
    print(num)
}
//배열에 index담기
for (num,value) in arr.enumerated() {
    print("\(num) : \(value)")
}

//Set
//set은 정렬되지 않은 컬렉션이기 때문에 실제로 출력되는 순서는 실행할때 마다 달라집니다.
let set:Set = [1, 2, 3]
for setnum in set {
    print(setnum)
}
//순서를 정하고 싶다면 sorted 메소드 사용
for (setnum,value) in set.sorted().enumerated() {
    print("\(setnum) : \(value)")
}

//Dictionary
//dictionary는 키와 값이 하나의 요소로 저장이 됩니다. 그래서 루프 상수로 전달되는 요소는 튜플형태로 전달됩니다. 그리고 튜플에는 키와 값이 저장되어 있습니다. 여기에 있는 루프상수로 첫번째 멤버로 키가 전달되고 두번쨰 멤버로 값이 전달됩니다.그리고 set과 마찬가지로 정렬되지 않은 컬렉션이기 때문에 출력되는 순서는 실행할때 마다 달라집니다.
let dict = ["A": 1, "B": 2, "C": 3]
for (key,value) in dict {
    print(key, value)
}

//: [Next](@next)
