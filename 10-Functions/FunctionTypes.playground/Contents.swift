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
 # Function Types
 ![ftype](ftype.png)
 */
//스위프트 함수는 First-class citizen 입니다.변수나 상수에 저장할수있다.파라미터로 전달할수있다. 함수에서 리턴 할수있다. (자료형이 필요)
//함수의 자료형을 표현하는 방법
//펑션타입에서 () 빈괄호는 비어있는 튜플입니다. Void는 없다는 뜻으로 사용됩니다. void는 리턴형이 없다는걸 알려주는 특별한 키워드입니다. 그리고 void는 빈괄호와 같습니다. 대부분 void는 사용하지 않고 빈괄호를 많이 씁니다.

//(parameterTypes) -> RetturnType
//함수 선언문법과 구조는 동일하나 함수를 선언할떄 리턴형이 없다면 리턴화살표와 리턴형을 생략하지만 여기에서는 생략할수 없습니다. 리턴형이 없는 경우에도 명시적으로 없다는걸 표현 해야합니다.

// () -> ()
func sayHello() {
    print("Hello Swift")
}
let f1 = sayHello
f1()

// (String) -> ()
func printHello(with name: String) {
print("hello, \(name)")
}

let f2: (String) -> () = printHello(with:)
//함수표기법에서는 아규먼트 레이블만 표기하죠. 그래서 이렇게 with만 쓰고 괄호를 닫아야 합니다.이상태에 실제로 아규먼트를 전달하면 실제로 함수를 호출하는게 되죠? 잘구분해야 합니다.
let f3 = printHello(with:)

//상수에 저장된 함수를 호출할떄에는 아규먼트레이블을 쓰지 않습니다
f3("World!!")

f2("Fock")

//(Int, Int) - > Int
func add(a: Int, b: Int) -> Int {
    return a + b
}

var f4: (Int, Int) -> Int = add(a:b:)

f4(3, 6)

//와일드 카드 패턴으로 agumentLabel 생략

func add(_ a: Int, with b: Int) -> Int {
    return a + b
}

let f5 = add(_:with: )

//입출력 파라미터를 사용하는 함수

func swapNumber(_ a: inout Int, _ b: inout Int) {
    
}

let f6 =  swapNumber(_:_: )

//가변 파라미터
func sum(of numbers: Int...) {
    
}

let f7 = sum(of: )


//사칙연산 함수

func add(_ a:Int, _ b: Int) -> Int {
    return a + b
}

func minus(_ a:Int, _ b: Int) -> Int {
    return a - b
}

func multiple(_ a:Int, _ b: Int) -> Int {
    return a * b
}

func divide(_ a:Int, _ b: Int) -> Int {
    return a / b
}

//가독성을 올리기 위해 typealias 추가
typealias ArithmeticFuntion = (Int, Int) -> (Int)
//함수를 리턴하는 함수
//func selectFunction(from op: String) -> (Int,Int) -> (Int) {

    //첫번쨰 화살표는 selectFunction의 return 화살표 이구 두번쨰 화살표는 functionType에 포함된 화살표입니다.
    //첫번째가 리턴화살표이고 나머지는 모두 형식에 포함된 화살표이다.
    // 코드의 가독성을 올리고 싶다면 typealias를 활용해보자!
    
func selectFunction(from op: String) -> ArithmeticFuntion? {
    switch op {
    case "+":
        return add(a:b:)
    case "-":
        return minus(_:_:)
    case "*":
        return multiple(_:_:)
    case "/":
        return divide(_:_:)
    default:
      return nil
    }
}
let af = selectFunction(from: "+")
af?(1, 2)
selectFunction(from: "*")?(12, 34)// 옵셔널 체이닝




