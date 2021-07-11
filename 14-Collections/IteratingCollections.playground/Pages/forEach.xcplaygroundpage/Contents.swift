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
 ## forEach
 */
//이 메소드는 주로 함수형 패러다임으로 코드를 작성할떄 사용합니다. 반복적으로 실행하는 코드를 클로저 파라미터로 받습니다. 그리고 이 클로저는 하나의 파라미터를 가지고 있고 값을 리턴하지 않습니다. for in 반복문에서는 컬렉션에 저장된 요소가 루프 상수로 전달되었습니다. foreach 메소드에서는 클로저로 전달됩니다.
//배열을 전달 하는 메소드를 foreach 메소드로 전달 해보겠습니다.
//Array
//forEach(<#T##body: (Int) throws -> Void##(Int) throws -> Void#>) 클로저를 파라미터로 받습니다. 자료형을 보면 하나의 파라미터를 받고 리턴형은 없습니다. 여기에서는 컬렉션에 저장된 요소가 클로저의 파라미터로 전달됩니다. 그래서 클로저 파라미터의 자료형은 항상 요소의 자료형과 동일합니다.
//코드를 출력해보면 for in 반복문과 동일한 결과가 출력됩니다.
let arr = [1, 2, 3]
arr.forEach { (num) in
    print(num)
}

//Set
//출력되는 순서는 실행할떄마 달라집니다.
let setnum:Set = [1, 2, 3]
setnum.forEach { (num) in
    print(num)
}

//Dictionary
let dict = ["A": 1, "b": 2, "C":3]
//동일한 구문
//요소가 튜플 형태로 전달됩니다. 요소가 저장되어 있는 멤버는 key로 접근할수 있고 값의 멤버는 value로 접근할수 있습니다.
dict.forEach { (key, value) in
    print(key, value)
}

dict.forEach { (dictdic) in
    print(dictdic.key, dictdic.value)
}

//차이점
//첫번째 함수에서는 for in 반복문으로 배열을 열거합니다.
//바디에서 프린트 함수에서 루프 상수를 출력한 다음에 이어서 리턴문을 호출하고 있습니다
func withForIn() {
    print(#function)
    let arr = [1, 2, 3]
    for num in arr {
        print(num)
        return//굳이 지운다고 에러가 뜨진 않으나 차이점을 비교하기 위해 삽입
    }
}
//두번쨰 함수에서는 for Each 메소드로 배열을 열거합니다.
//클로저 바디에서 파라미터로 전달된 요소를 출력한다음에 이어서 리턴문으로 호출하고 있습니다.
func withForEach() {
    print(#function)
    let arr = [1, 2, 3]
    arr.forEach { num in
        print(num)
        return
    }
}
//1.for in 반복문은 내부에서 break문과 continue문을 사용할수 있습니다. 하지만 forEach 메소드로 전달한 클로저는 반복문이 아니기 떄문에  break문과 continue문을 사용하는 것은 불가능 합니다.
//2.for in 반복문에서 리턴을 호출한 경우에는 반복문이 포함되어 있는 코드 블록이 바로 종료됩니다. 하지만 forEach 내부로 전달한 클로저에서 호출한 리턴문은 외부에는 영향을 주지 않습니다. 그리고 반복횟수에도 영향을 주지 않습니다. 여기에 있는 리턴문은 지금 실행 하고 있는 클로저 코드를 중지할 뿐입니다.
withForIn()
withForEach()
//for in 반복문에서 리턴을 호출한 경우에는 함수 전체가 중지 됩니다. 그래서 첫번째 반복에서 1을 출력한 다음에 함수 전체가 종료되었기 때문에 1만 출력되었습니다. forEach에서도 마찬가지로 리턴문을 호출 하고 있지만 이리턴문은 함수 실행에 영향을 주지 않습니다.그냥 현재 실행중인 클로저만 종료 할 뿐입니다. 반복횟수에는 영향을 주지 않기 떄문에 1,2,3 이 모두 출력 되었습니다.
