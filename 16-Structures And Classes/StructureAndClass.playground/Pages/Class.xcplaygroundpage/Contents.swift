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
 # Class
 ![Class](class.png)
 */
class Person {
    var name = "Jon"
    var age = 0
    
    func speak() {
        print("Hello")
    }
}
let p = Person()

p.age
p.name
p.speak()

//구조체와 클래스는 저장공간을 처리하는 방식에 차이가 있습니다. 구조체는 스택이라 부르는 메모리 공간에 값을 저장합니다.그리고 값을 전달 할때마다 복사본을 생성합니다.이런 형식을 통틀어서 값형식이라 부르는데 열거형과 기본자료형 모두 값형식에 속합니다. 반대로 class는 힙이라고 부르는 공간에 값을 저장합니다. 스택에는 힙에 저장되어 있는 값의 주소를 저장합니다. 값을 저장하는 복사본을 생성하지 않고 주소만 전달합니다.이런 형식을 참조 형식이라고 합니다 스위프트에서는 클래스와 클로저가 참조형식에 포함됩니다.생성자와 달리 소멸자는 클래스 전용입니다. 상속 역시 클래스에서만 지원 합니다.마지막으로 메모리 관리 방식에도 차이가 있습니다. 값 형식의 구조체는 인스턴스가 속한 스코프가 종료되면 메모리에서 자동으로 제거 됩니다. 참조 형식인 클래스는 스코프와 관계없이 레퍼런스 카운팅을 통해서 메모리를 관리합니다. 



















