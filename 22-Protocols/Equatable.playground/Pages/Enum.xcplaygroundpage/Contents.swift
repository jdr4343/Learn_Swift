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
 # Equatable for Enumerations
 */
//값의 동일성을 비교할수 있는 타입 반드시 구현해야 하는 프로토콜
//스탠다드 라이브러리 포함되어 있는 타입들은 이미 Equatable 프로토콜을 구현하고 있음
// == !=연산자도 값의 동일성을 비교할수 있음 Equatable 가장 기본적인 프로토콜이어서 대부분의 경우 컴파일러가 자동으로 구현해줌
enum Gender {
   case female
   case male
}

Gender.female == Gender.male

struct MySize {
   let width: DoubleEquatableEquatable
   let height: Double
}

enum VideoInterface: Equatable {
   case dvi(width: Int, height: Int)
   case hdmi(width: Int, height: Int, version: Double, audioEnabled: Bool)
   case displayPort(size: CGSize)
}
//열거형이 연관값을 가지고 있고 연관값의 형식이 Equatable 구현하는 기본형식이라면 Equatable 구현을 자동으로 제공합니다.

let a = VideoInterface.hdmi(width: 2560, height: 1440, version: 2.0, audioEnabled: true)
let b = VideoInterface.displayPort(size: CGSize(width: 3840, height: 2160))

a == b//== 연산자를 VideoInterface 형식의 피연산자와 사용할수 없다고 합니다. 연관값을 가지고 있는 경우에는 Equatable를 채용한다고 선언해야합니다.그러면 나머지는 컴파일러가 알아서 선언합니다.

//연관값이 선언되지 않은 열거형은 Equatable 구현이 자동으로 추가되고 연관값을 가지고 있고 모든 연관값의 형식이 Equatable 를 구현한 형식이라면 이때도 열거형에 Equatable 구현이 자동으로 추가됩니다.

//: [Next](@next)
