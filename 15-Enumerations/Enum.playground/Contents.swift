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
 # Enumerations
 ![enum](enum.png)
 */
//열거형
//독립적인 자료형
//코드에 가독성과 안전성을 위해 사용됨

//워드 프로세스를 만든다고 가정하고 문단 정렬방식을 구현하겠습니다. 어떤 값으로 정렬을 표현할지 정하겠습니다.
//정수타입으로 정렬을 표현하고 왼쪽 정렬은 0 가운데는 1 오른쪽은 2로 표현해보겠습니다.
var left = 0
var center = 1
var right = 2
//실제로 문단을 정렬하는 코드를 구현하기는 어려우니 간단하게 변수에 저장하고 이어지는 코드에서 이변수를 사용한다고 가정하겠습니다.
var alignment = center
//코드는 문제 없이 실행되지만 이값을 모른다면 0, 1, 2 가 어떻게 사용되는지 알수없어 가독성 측면에서 아주나쁜 코드 입니다.

//코드를 개선 시켜 보겠습니다.
var wleft = "left"
var wcenter = "center"
var wright = "right"
//가독성은 증가했는데 여기에도 문제가 있습니다. 문자열이라 오타가 발생할수 있고 대소문자를 구분하기 때문에 어떻게 표기할지 정해야 합니다.정하지 않는다면 정렬에 사용하는 값을 올바르게 비교할수 없습니다.


// 이런 안정성 문제와 가독성을 enum 클래스는 이런 문제를 모두 해결합니다.
/*:
 ## Syntax
 ![syntax](enum-syntax.png)
 */
//열거형을 직접 선언 해보겠습니다
enum Alignment {
    case left
    case center
    case right
}

Alignment.center

var tectAlignment = Alignment.center
//열거형 케이스역시 코드에서 의미가 변하지 않는 하나의 값 입니다.그런데 처음에는 이게 값 이라느걸 이해하기 어렵습니다. 일단 숫자도 아니고 큰따옴표도 없으니깐 문자열도 아닙니다. 그리고 중간에 . 이 포함되어 있어 값이라고 생각하기 어렵습니다. 하지만 열거형 케이스는 엄연히 독립적인 케이스 입니다.

//변수에 저장된 값을 왼쪽 정렬로 바꿔 보겠습니다.앞에서 열거형을 저장했기떄문에 컴파일러가 열거형 이라는걸 알고 있습니다. 그래서 이렇게 열거형 이름을 생략하고 케이스 이름만 적어도됩니다.여기서 중요한점은 열거형이름은 생략해도 되지만 . 은 빼면 안됩니다.
tectAlignment = .right

//열거형은 다양한 부분에서 활용됩니다. 앞으로 앱을 만들면서 다양한 프레임워크와 라이브러리를 사용하게 되는데 여기에는 수백개의 열거형이 선언되어 있습니다.
//대부분 직관적인 이름으로 선언되어 있어서 어디에 사용하는지 어떤값을 사용해야하는지 직관적으로 파악할수 있습니다. 암기할 필요는 없습니다.

//열거형을 비교하는 코드
if tectAlignment == . center {
    //열거형은 값이기 떄문에 비교 연산자로 비교합니다.
}

//열거형 케이스를 기준으로 코드를 분기 할때는 주로 switch로 구성합니다. 코드의 깔끔함을 위해서 입니다
switch tectAlignment {
case .left:
    print("left")
case .center:
    print("center")
case .right:
    print("right")
}

// 위와 같은 코드를 if문으로 구현해 보았습니다. 가독성이 많이 차이나지요?
if tectAlignment == .left {
    print("left")
} else if tectAlignment == .center {
    print("center")
} else {
print("right")
}














