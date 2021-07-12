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
 # CaseIterable
 */
//CaseIterable
//7개의 요일중 하나의 코드를 랜덤으로 뽑아내는 코드가 필요하다고 가정해봅시다.
enum Weekday: Int {
   case sunday
   case monday
   case tuesday
   case wednesday
   case thursday
   case friday
   case saturday
}
//우선은 랜덤 넘버를 구하고.파라미터로 전달하는 범위를 enum의 int속성 특성상 +1씩 되는걸 생각해서 범위를 정하면 됩니다.
let randumNum = Int.random(in: 0...6)
Weekday(rawValue: randumNum)
//지금은 랜덤값의 범위를 rowValue의 범위와 일치 시켰기 때문에 항상 올바른 요일이 리턴됩니다.그런데 로밸류값을 직접 지정하거나 랜덤값의 범위와 일치 하지 않는다면 코드는 의도한대로 동작하지 않습니다.

//이렇게 CaseIterable 추가하면 모든 케이스를 컬렉션으로 정확히는 배열로 리턴해주는 AllCasese 속성이 자동으로 제공됩니다.
enum Weekday2: Int, CaseIterable {
   case sunday
   case monday
   case tuesday = 100
   case wednesday
   case thursday
   case friday
   case saturday
}
//이렇게 어퍼바운드를 6이 아니라 이렇게 카운트 속성으로 대체할수 있습니다. 고정된 값이 아니니 케이스를 추가하거나 삭제하면 자동으로 반영됩니다.하지만 로밸류가 랜덤범위와 일치 하지 않을수 있기떄문에 열거형 인스턴스가 만들어지지 않는경우가 있습니다.
//allCases 속성이 배열을 리턴하고 여기에는 모든 case가 저장되어 있습니다.그래서 배열이 제공하는 random엘레멘탈 속성을 사용하면 로밸류에 관계 없이 랜덤한 요일을 뽑아낼수 있습니다.
let randumNum2 = Int.random(in: 0...Weekday2.allCases.count)
Weekday2(rawValue: randumNum2)

Weekday2.allCases.randomElement()
//이속성이 리턴하는게 배열이니깐 반복문으로 모든케이스를 열거하는것도 가능합니다.
for w in Weekday2.allCases {
    print(w)
}
