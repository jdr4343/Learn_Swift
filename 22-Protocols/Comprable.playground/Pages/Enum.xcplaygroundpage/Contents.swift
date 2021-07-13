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

import Foundation

/*:
 # Comparable for Enumerations
 */
//값의 크기와 순서를 비교할떄 필요한 Comparable 프로토콜 Equatable은 동일성을 비교하고 Comparable은 값의 크기나 순서를 비교합니다.
//Swift가 기본적으로 제공하는 String과 Int,Double을 포함한 숫자 타입은 기본적으로 이프로토콜을 구현하고 있습니다.그래서 우리가 별다른 구현을 추가하지 않아도 크기를 비교할수 있습니다.
//반면 직접 만든 타입은 크기를 비교하는것도 정렬하는것도 불가능합니다.

//커스텀 타입에서 Comparable 프로토콜을 구현해보겠습니다.

//열거형 선언에서 Comparable 채용하겠다고 선언하면 프로토콜 구현이 자동으로 구현 됩니다
//enum Weekday: Comparable {

//반대로 이런조건을 충족시키지 못한다면 우리가 직접 구현해야 합니다.직접 구현 해보겠습니다.
enum Weekday: Int {
   case sunday
   case monday
   case tuesday
   case wednesday
   case thursday
   case friday
   case saturday
}
//지금은 열거형이 로밸류를 가지고 있기 떄문에 로밸류를 비교한 결과를 바로 리턴 하면됩니다.로밸류가 없다면 If문이 switch문을 활용해서 개별케이스를 비교한 결과를 리턴해야 합니다.
//Comparable이 Equatable을 상속하고 있기 때문에 Equatable 요구하는 연산자도 구현해야 되는데 지금은 자동으로 제공되고 있습니다.
extension Weekday: Comparable {
    static func < (lhs: Weekday, rhs: Weekday) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
    
}




Weekday.sunday < Weekday.monday
Weekday.sunday <= Weekday.monday
Weekday.sunday > Weekday.monday
Weekday.sunday >= Weekday.monday

//: [Next](@next)
