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
 # Raw Values
 ![Raw Values](raw-values.png)
 */
// 여기에서 선언한 case는 모두 독립적인 값입니다. enum 케이스는 그자체로 독립적인 값이지만 내부에 또다른 값을 저장할수 있습니다 이것을. RowValue라고 하는데 우리말로는 원시값이라고 번역한니다.
//RowValue는 필수사항이 아닙니다. RowValue을 저장하지 않는다고 해서 에러가 발생하는 것은 아닙니다.
//enum 케이스와 연관된 또다른 값을 함께 저장해야할떄 선택적으로 사용합니다.

enum Alignment: String {
    case left = "left"
    case right = "right"
    case center = "center"
}

//원시값에 접근해 보겠습니다.
Alignment.left.rawValue
Alignment.right.rawValue


enum Number: Int {
    case first
    case second = 101
    case third
}

Number.third.rawValue
//보는 것처럼 102 입니다. 원시값을 지정하지 않으면 자동으로 값이 지정되는데 기준값은 항상 이전값입니다. 그래서 101에서 1이 증가한 102가 저장 되었습니다.

//RowValue는 선언이후에 값을 바꾸는 건 불가능 합니다.

//생성자
Number(rawValue: 0)
Number(rawValue: 200)//값이 없는경우 nil을 리턴합
Alignment(rawValue: "left")


enum Weekday: String {
    case sunday
    case monday
    case thesday
    case wednesday
    case thursday
    case friday
    case saturday
}

Weekday.sunday.rawValue










