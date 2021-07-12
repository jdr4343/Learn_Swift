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
 # Associated Values
 ![associated-values](associated-values.png)
 */
//연관 값
//enum 케이스에 연관값을 저장합니다.

//비디오 인터페이스에 해상도를 저장해보겠습니다.
//원시값으로 스트링으로 선언한다음에 문자열로 해상도를 저장해보겠습니다
enum VideoInterfaceRowValue: String {
    case dvi = "1028 x 768"
    case hdmi = "2048x1536"
    case displayport = "3840x2160"
}
//해상도는 보통 숫자로 사용하기 때문에 문자를 숫자로 추출해야합니다. 여기에는 또다른 문제도 있습니다. 동일한 케이스가 하나의 값을 공유한다는 것입니다. 모니터에 따라서 해상도의 차이가 있는데 이렇게 원시값으로 해상도를 저장하면 해상도를 하나밖에 표현하지 못합니다. 그리고 원싯값은 모든 케이스가 동일한 형식을 공유합니다.

//연관 값은 이런 문제를 해결해줍니다 연관값은 저장한 값의 형식을 개별 케이스마다 따로 선언합니다

//연관 값은 케이스 이름뒤에서 선언합니다.
//원싯값에는 선언 할수있는 타입에 제약이 있지만 연관값엔 제약이 없습니다.
//하나의 케이스에는 서로 다른 연관값을 저장할수 있습니다.
//두 값은 배타적이여서 하나의 enum에 함께 사용하는 것도 불가능 합니다.

enum VideoInterfaceAssociatedValus {
    case dvi(width: Int, height: Int)//가독성을 올리고 싶다보면 튜플 이름을 적어주어도 됩니다.
    case hdmi(Int, Int, Double, Bool)//언네임드 튜플
    case displayport(CGSize)
}
var input = VideoInterfaceAssociatedValus.dvi(width: 2048, height: 1536)

switch input {
case .dvi(2048, 1536)://동일한 값을 매칭
    print("dvi 2048 x 1536")
case .dvi(2048, _)://너비만 매칭, 와일드카드 패턴 생략
    print ("dvi 2048 x Any")
case .dvi://연관값을 무시하고 케이스 블록만 매칭
    print("dvi")
case .hdmi(let width, let height, let version, let audioEnabled)://연관값을 상수로 바인딩, 블록내부에서 연관값을 사용할떄 자주 사용하는 패턴,만약 블록 내부에서 바인딩 된값을 바꿔야한다면 변수로 선언해줍니다.
    print("hdmi \(width)x\(height)")
case let .displayport(size)://모든 연관값을 동일한 형태로 바인딩 한다면 마지막 케이스 처럼 let 키워드를 열거형 케이스 앞에 표기 하는것도 가능합니다. 이렇게 열거형을 매칭하는 코딩 패턴을 Enumeration Case Pattern이라고 합니다.
    print("dp")
}

//이어서 input에 새로운 열거형을 저장하겠습니다.
input = .hdmi(3840, 2160, 2.1, true)//이렇게 하면 기존에 저장되어 있던 열거형과 연관값은 모두 새로운 값으로 교체 됩니다.











