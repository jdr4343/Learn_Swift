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
 # Self Type
 */
//Self: 현재 형식으로 추론되는 Self타입에 대해 알아봅시다.
//현재 인스턴스를 가리키는 self속성과는 다른 Self라는 타입입니다.self 속성과 Self 타입은 가리키는 대상이 다르기 떄문에 정확하게 구분해야 합니다.


extension Int {
    //타입 프로퍼티를 보면 타입이 Int로 선언되어 있습니다. 이 타입이 extension으로 확장하는 타입과 동일하다면 Int 대신 Self로 선언 할수 있습니다.
    //Self는 타입이기 때문에 항상 타입을 선언하는 위치에서 사용해야 합니다.
    //Self타입은 이름 그대로 현재 타입을 나타냅니다.
   static let zero: Self = 0//Int = 0 extension내부에서 현재타입은 확장하는 타입이죠 그래서 여기에서는 Int와 같습니다.

   var zero: Self {
      return 0
   }

   func makeZero() -> Self {
      return Self()
   }
}

//Self를 사용했을떄의 장점 컴파일러가 현재 컨텍스트에서 타입을 추론하기 때문에 타입에 의존하지 않는 범용코드를 작성할수 있습니다.

extension Double {
    static let zero: Self = 0
    var zero: Self {
       return 0
    }

    func makeZero() -> Self {
       return Self()
    }
}
//복붙하기 쉬워진다

Int.zero
Double.zero

