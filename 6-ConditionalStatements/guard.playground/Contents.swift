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
 # guard
 ## Syntax
 ![guard-syntax](guard-syntax.png)
 */
// Early Exit 원하는 조건이 충족되지 않으면 불필요한 코드는 실행하지 않고 일찍 종료 해버린다.
//가드문에선 else블럭을 생략할수 없음
//가드문을 사용하면 if문에 비해 중첩을 피할수 있고 코드가 깔끔해짐
//두개의 조건을 개별 guard문으로 확인
func validate(id: String?) -> Bool {//실제로 문자열이 저장되어 있는지 확인
    guard let id = id else {
        return false
    }
    guard id.count >= 6 else {// 문자열의 길이를 확인
        return false
    }
    return true
}
// id파라미터로 저장된 문자열에 실제로 문자열이 저장되어 있다면 id 라는 상수를 새롭게 선언하고 거기에 저장되어 있는 문자열을 저장한다는 뜻입니다. 만약에 문자열이 없다면 저장할것도 없습니다. 그러면 옵셔널 바인딩이 실패합니다. 그런경우에는 else블럭에 있는 코드를 실행 합니다.만약에 옵셔널 바인딩이 성공을 한다면 guard문 이후에 작성된 코드가 실행됩니다.

//두개의 조건을 guard 문으로 확인
func validate(ed: String?) -> Bool {
    guard let ed = ed, ed.count >= 6 else {
        return false
    }
    return true
}
validate(id: nil)
validate(ed: nil)
validate(id: "abc")
validate(id: "asdasfag")















