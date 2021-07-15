//
//  Mastering Swift
//  Copyright (c) KxCoding <help@kxcoding.com>
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
 # Nonreturning Functions
 */
//호출하면 코드를 종료하거나 예외를 던지는 특별한 함수에 대해 알아봅시다.

//함수가 값을 return 한다는 것은 두가지 의미가 있습니다.아래의 코드 처럼 값을 리턴해주는것이 하나이고 함수의 실행을 종료한 다음에 제어를 함수를 호출하는 코드 이후로 전달합니다.그래서 나머지 코드가 계속해서 실행됩니다.
func returnSomething() -> Int {
   return 0
}

let result = returnSomething()
print(result)

//여기에서 두번째 함수를 보면 값을 리턴하지 않고 리턴 키워드만 있습니다. 여기에선 값을 리턴하지는 않지만 여전히 제어를 호출문 이후로 전달합니다.그래서 이어지는 프린트 함수가 호출됩니다.
func returnNothing() {
   return
}

returnNothing()
print("done")

//Nonreturning Function에서 Nonreturning은 값을 리턴하지 않는다고 할수도 있지만 정확히는 제어를 전달하지 않는다는 뜻입니다. 더 정확히는 함수를 호출하는 코드 다음으로 제어를 전달하지 않습니다. Nonreturning을 호출하면 결과는 두가지 밖에 없습니다.첫번째 결과는 프로그램이 종료되는것이고 두번째는 에러를 처리하는 코드로 제어가 전달됩니다.

//Nonreturning 코드를 작성하겠습니다.
func doSomethingAndTerminate() -> Never{
    //이렇게 리턴형이 Never 선언된 함수를 NonreturningFuntion 이라고 합니다 메소드에서 Never을 리턴형으로 선언하면 Nonreturning메소드가 됩니다.
    //Never는 함수나 메소드가 return하지않는다는걸 나타내는 특별한 형식입니다.
    //Never형식은 빈열거형으로 선언되어 있습니다.
    fatalError()//프로그램 실행을 종료
}
//doSomethingAndTerminate()
//이 패턴은 디버깅에서 사용합니다. 코드에서 처리할수업는 에러가 발생할떄 런타임에러를 조금더 쉽게 발생할수 있습니다.

enum MyError: Error {
    case error
}

func doSomethingAndAlwaysThrow() throws -> Never {
    throw MyError.error
}
do {
    try doSomethingAndAlwaysThrow()
}catch{
    print(error)
}
