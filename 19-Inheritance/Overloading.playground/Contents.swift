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
 # Overloading
 */
//오버로딩을 통해 동일한 이름을 가진 멤버를 구현하는 방법에 대해 공부 합시다.
//오버라이딩은 상속된 멤버를 현재 클래스에 적합하게 다시 구현할대 사용합니다. 반면 오버로딩은 하나의 형식에서 동일한 이름을 가진 다수의 멤버를 구현할떄 사용합니다.
//이렇게 같은 동일한 스코프에 같은 이름을 가진 함수가 있다면 어떤 함수를 호출해야하는지 알수가 없어 에러가 발생합니다.
//다른형식의 파라미터를 추가해보겠습니다.이렇게 하면 에러가 사라집니다. 스위프트는 오버로딩을 지원하는 언어이고 두함수의 차이를 구분할수 있습니다.
//오버로딩을 사용하지 않는 다른 언어들은 함수이름을 다른 이름으로 선언하는 수밖에 없습니다.이런방식으로 구현하면 같은 기능을 제공하는 함수를 파라미터형식마다 하나씩 구현해야하고 그만큼 함수의 이름이 많아집니다. 함수의 이름이 많아진다는것은 래퍼런스를 참고해야하는 횟수가 늘어난다는 뜻이고 프로그래머에게 부담감을 느끼게합니다.
//스위프트는 오버로딩을 지원합니다. 함수이름과 파라미터 리턴형을 모두 포함해서 함수를 식별하기 때문에 이름이 같아도 파라미터 형식만 다르다면 문제 없이 식별할수 있습니다.
func process(value: Int) {
    print("process Int")
}
func process(value: String) {
    print("porcess String")
}

process(value: 0)
process(value: "Hi")
//스위프트가 오버로딩을 제공하는 대상은 함수 메소드 서브스크립트 생성자입니다. 오버로딩에는 네가지 규칙이 있습니다.
//함수이름이 동일하다면 선언된 파라미터수로 구분한다.여기에서 두번째 함수와 세번째 함수를 보겠습니다.두함수의 이름이 동일하고 스트링을 파라미터로 받습니다. 하지만 파라미터 수에 차이가 있기떄문에 정확히 식별할수 있습니다
func process(value : String, anotherValue: String) {
    
}
//이름과 파라미터 수가 동일하다면 파라미터의 자료형으로 구분합니다. 첫번째 함수와 두번째 함수를 보면 이름과 파라미터 수가 같으나 파라미터 형식이 다르기 때문에 두함수를 정확히 식별할수 있습니다.
//이름과 파라미터수와 파라미터 자료형이 모두 동일하다면 아규먼트레이블로 구분합니다. 두번쨰 함수와 네번째 함수를 보면 두번째 함수에서 아규먼트 레이블은 value 네번째 함수에서는 생략된 아규먼트 레이블 입니다.
func process(_ value: String) {
    print("_")
}
process(value: "str")
process("_ str")
//이름과 파라미터과 완전히 동일하다면 리턴형으로 구분합니다.
//아래에 구현한 코드는 리턴형을 빼고는 나머지 부분이 모두 같습니다
// 코드에서 에러가 발생합니다.두 함수중에 어떤 함수를 호출해야 할지 판단할수 없어서 그럽니다.이번에는 리턴형을 통해서 함수를 식별하기 떄문에 리턴하는 값을 변수나 상수에 저장하고 자료형을 선언해야 합니다.

func process(value: Double) -> Int {
    return Int(value)
}

func process(value:Double) -> String? {
    return String(value)
}
//이렇게 Int로 선언하면 두함수중에서 첫번쨰 함수가 호출됩니다.두번쨰 함수는 상수의 자료형이 호출할 함수를 결정하니깐 옵셔널 스트링으로 선언하면 됩니다. 만약 자료형을 생략하고 형식추론을 사용하고 싶다면 타입캐스팅을 활용하면 됩니다.
let result: Int = process(value: 12.34) as Int

//지금까지는 함수를 기준으로 공부했지만 메소드 생성자 서브스크립트에서도 동일한 규칙을 사용합니다
//인스턴스 메소드와 타입메소드를 하나씩 추가하겠습니다.
//두 매소드는 이름과 파라미터 형식 리턴형이 모두 같습니다.
struct Rectengle {
    func area() -> Double {
        return 0.0
    }
    
    static func area() -> Double {
        return 0.0
    }
}
//메소드는 이렇게 인스턴스이름과 형식이름으로 각각 호출합니다. 그래서 완전히 동일한 메소드를 인스턴스 메소드와 타입 메소드로 하나씩 구현해도 문제가 없습니다.
let r = Rectengle()
r.area()
Rectengle.area()
