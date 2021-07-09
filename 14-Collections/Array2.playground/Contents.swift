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
 # Adding Elements
 */
//배열을 편집하는 방법
//가변 배열로 선언, 새로운 요소를 추가하거나 수정하고 싶다면 var를 써야 합니다.
var alphabet = ["A", "B", "C", "D"]
//배열 마지막 부분에 새로운 요소를 추가해보겠습니다,
alphabet.append("E")
//두가지 새로운 요소를 한번에 추가 해보겠습니다. 보시다싶이 대괄호로 묶어줘야합니다
alphabet.append(contentsOf: ["F", "G"])

//"C"다음에 요소를 추가 해보겠습니다
alphabet.insert("N", at: 3)
//배열 시작 부분에 소문 "a","b","c" 두개이상의 요소를 동시에 추가하기 떄문에 contentsOf를 사용합니다.
alphabet.insert(contentsOf: ["a", "b", "c"], at: 0)

//처음에 저장되어 있는 소문자 "a","b","c" 를 "x"."y","z"로 바꿔보겠습니다.
//subscript
alphabet[0...2] = ["x", "y", "z"]
alphabet
//메소드로 "x"."y","z"를"a","b","c" 바꿔보겠습니다.
alphabet.replaceSubrange(0...2, with: ["a", "b", "c"])
alphabet
//배열 일부분을 바꿀떄는 반드시 동일한 숫자로 바꿔야 하는것은 아닙니다.
//처음 3개의 요소를 1개의 요소로 바꿔 보겠습니다.
alphabet[0...2] = ["Z"]
alphabet
//빈 배열을 전달하면 위치에 있는 요소가 삭제됩니다.
alphabet[0..<1] = []
alphabet
/*:
 # Removing Elements
 */
//요소를 삭제하는 방법
alphabet = ["A", "B", "C", "D", "F", "G"]

//하나의 요소를 삭제 해보겠습니다.
alphabet.remove(at: 2)
alphabet
//첫번쨰 요소를 삭제 해보겠습니다.
alphabet.removeFirst()
alphabet
//시작 부분에 있는 두개의 요소를 지워 보겠습니다.
alphabet.removeFirst(2)
alphabet

//뒤에서 삭제 해보겠습니다.
alphabet.removeLast()

//모두 삭제해보겠습니다
alphabet.removeAll()

alphabet = ["A", "B", "C", "D", "F", "G"]
//이메소드는 마지막 요소를 삭제한다음에 삭제한 요소를 리턴해줍니다. remove 메소드와 달리 error를 배출하지 않기때문에 코드가 조금더 안전해 집니다.
alphabet.popLast()
alphabet

//특정 범위를 removeSubrange 사용해서 삭제해보겠습니다.
alphabet.removeSubrange(0...2)
alphabet

//빈 배열을 전달하면 위치에 있는 요소가 삭제됩니다.
alphabet[0..<1] = []
alphabet



