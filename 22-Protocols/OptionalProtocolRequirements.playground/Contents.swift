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
//문법 상단 objc Attribute : 스위프트로 작성한 코드를 ObjectC 코드에서 사용 할수있게 해주는 Attribute 입니다.
//문법 하단 optional Modifier: 선택적 멤버로 사용할떄 사용합니다.
//옵셔널 멤버를 사용하고 싶다면 프로토콜 키워드 앞에 @objc를 반드시 추가 해야합니다. 그리고 옵셔널 멤버를 선언할때는 개별 선언 앞부분에 @objc 와 옵셔널 모디파이어를 모두 추가해야합니다.
/*:
 # Optional Protocol Requirements
 ![optional](optional.png)
 */
//선택적 요구사항
//Optional Protocol Requirements 요구하는 Optional은 Optional 형식을 의미하는 것이 아닙니다.단어 그대로 선택적이라는 의미로 사용합니다.


//이 프로토콜은 두개의 속성과 두개의 메소드가 선언되어 있습니다. 이프로토콜을 채용하는 형식은 반드시 모든속성을 선언하고 모든 메소드를 구현해야 합니다.
//draw()를 제외한 모든 항목을 옵셔널멤버로 선언하겠습니다.
@objc protocol Drawable {
    @objc optional var strokeWidth: Double { get set }
    @objc optional var strokeColor: UIColor { get set }
    func draw()
    @objc optional func reset()
    //@objc 선언한 프로토콜을 @objc프로토콜이라 부르고 클래스 전용입니다.@objc 선언하면 AnyObject 프로토콜이 자동으로 선언됩니다.
}

class Rectangle: Drawable {
    func draw() {
        
    }
}

let r: Drawable = Rectangle()
r.draw()
//필수멤버인 드로우를 호출해보겠습니다.이형식은 프로토콜을 채용한 모든 형식에 구현되어 있습니다. 그래서 언제든지 호출하고 결과를 얻을수 있습니다. 반면 선택적 멤버에 접근 할떄에는 옵셔널 체이닝이 필요합니다. 선택적 멤버로 선언했다면 옵셔널 형식이기 떄문입니다.
r.strokeWidth
r.strokeColor
//지금 랙탱글 클래스에는 프로토콜에 있는 속성이 선언되어 있지 않습니다. 그래서 두속성을 프린트 해보면 nil이 출력됩니다.
r.reset?()
//선택적 메소드를 호출할때에는 ()앞에 ?를 추가 해야합니다. 랙탱글 메소드에 reset이 구현되어 있지 않아 nil가 출력됩니다.


























