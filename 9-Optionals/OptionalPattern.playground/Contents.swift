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
 # Optional Pattern
 */
//옵셔널 패턴 : 옵셔널 패턴을 활용해서 옵셔널 매칭 코드를 더욱 효율적으로 작성하는 방법에 대해 알아봅시다
//Optional Pattern을 이해하기 위해서는 먼저 옵셔널이 어떻게 구현되어 있는지 알고 있어야 합니다.
//Optional구현되어 있는 툴을 보면 열거형으로 구현되어 있습니다. 옵셔널에 저장되어 있는 값은 some case에 연관값으로 저장되고 값이 저장 되어있지 않은 값은 non case와 같습니다. 그리고 제네릭으로 선언되어 있기때문에 모든 형식을 옵셔널로 선언할수 있습니다.


//단축문법
let a: Int? = 3
//정식문법
let b: Optional<Int> = 0

if a == nil {
    print(true)
}else {
    print(false)
}

if a == .none {
    print(true)
}else{
print(false)
}
//위 값을 비교하는 두 코드는 같은 코드 입니다.

if a == 3 {
    print(true)
}else {
    print(false)
}

if a == .some(3){
    print(true)
}else {
    print(false)
}
//위 값을 비교하는 두 코드는 같은 코드 입니다.

//옵셔널 바인딩 코드 a상수에 저장되어 있는 값을 x라는 임시상수에 바인디해서 출력하는 코드
if let x = a {
   print(x)
}
//enumaration case(열거형 케이스)pattern으로 다시 작성해보겠습니다.
if case .some(let x) = a {
   print(x)
}
//실행 해보면 두결과는 동일합니다.위코드는 단축문법이라고 볼수 있습니다.

//알아볼 OptionalPattern은 enumarationCasePattern의 Optional 버전이라고 생각합니다.이말은 enumarationCasePattern을 사용할수 있는 코드는 언제나 OptionalPattern을 사용할수 있겠죠

//위의 코드를 OptionalPattern 바꿔보겠습니다.
if case let x? = a {
   print(x)
    //마찬가지로 이전과 결과는 동일합니다. 이코드에서 x는 상수의 이름 identifier입니다.OptionalPattern에서는 identifier뒤에 ? 를 붙여줍니다. 이렇게 하면 a상수의 값이 저장되어 있다면 x 상수로 바인딩 되고 if블록이 실행됩니다. 반대로 a 상수에 값이 저장되어 있지 않다면 바인딩 할 값이 없기 떄문에 if블록은 실행되지 않습니다.
    //실행결과를 보면 Optionalbinding과 동일합니다. 그래서 if 블록 내부에서 x의 자료형을 확인애보면 OptionalInt가 아니라 Int입니다. 이말은 바인딩 되는 시점에 자동으로 언래핑 되었다는 뜻입니다.
    //Optionalbinding과 결과는 같기때문에 그냥 Optionalbinding만 사용해도 문제는 없습니다.하지만 OptionalPattern을 사용하면 코드가 좀더 단순해집니다.
}


let list: [Int?] = [0, nil, nil, 3, nil, 5]
//Optionalbinding
for item in list {
   guard let x = item else { continue }
   print(x)
}

//OptionalPattern
for case let x? in list {
   print(x)
}



























