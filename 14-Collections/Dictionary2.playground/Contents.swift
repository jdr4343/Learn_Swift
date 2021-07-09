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
 # Adding Keys and Values
 */
//dictionary에 새로운 요소를 추가하고 삭제하는 방법
//새로운 요소를 추가 할때는 key를 기준으로 추가합니다. 그리고 subscript문법으로 추가 하는 방법이 제일 간단합니다.
//빈 dictionary 생성
var words = [String: String]()
//key와 value에 String으로 지정하고 key를 기준으로 추가하기 때문에 subscript에는 추가할key를 전달합니다. 그리고 key와 함께 저장할 값을 지정합니다.
words["A"] = "Apple"
//"B"키에 "Banana"도 지정해보겠습니다.
words["B"] = "Banana"

words.count
words
//기존에 저장되어 있던 "B"를 값을 변경해 보겠습니다.
words["B"] = "Ball"
words.count
words
//dictionary 문법을 사용하면 키가 존재하지 않는경우에는 새로운 요소를 추가 하고 키가 존재한다면 기존 값을 교체합니다.

//메소드로 같은 작업을 해보겠습니다. 메소드로 새로운 요소를 추가 할때에는 updateValue 사용합니다 첫번째 파라미터에는 저장할 값을 전달하고 두번째 파라미터로 키를 전달합니다.
words.updateValue("City", forKey: "C")
words.count
words
words.updateValue("Circle", forKey: "C")
words
//메소드와 subscript 둘다 key가 존재 한다면 교체하고 존재 하지 않는다면 요소를 추가합니다.

/*:
 # Removing Keys and Values
 */
// 요소 삭제, 삭제도 key가 기준입니다. 여기서도 subscript문법이 간단합니다.
words
//"B"키와 연관된 해당요소를 삭제 해보겠습니다.
words["B"] = nil
words

//메소드를 이용해 삭제해보겠습니다 메소드로 삭제를 할떄에는 removeValue 메소드를 사용합니다. 파라미터로 삭제할 키를 전달하면 키와 관련된 요소를 삭제한 다음에 삭제한 값을 리턴해줍니다.
words.removeValue(forKey: "A")

//전체 요소를 삭제 할때에는 removeAll 메소드를 사용합니다.
words.removeAll()




















