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
 # Subscript Requirements
 ![subscript](subscript.png)
 */
//프로토콜에서 Subscript 선언할떄에는 이전에 공부했던 다른 멤버와 마찬가지로 구현부분은 포함시키지 않습니다.
//그리고 속성과 마찬가지로 {} 사이에 get, set 키워드를 추가해서 가변성을 지정합니다.

protocol list {
    subscript(idx: Int) -> Int { get }
}
//이어서 새로운 구조체를 만들고 프로토콜을 채용하겠습니다.
struct DataStore: list {
    subscript(idx: Int) -> Int{
        return 0
        //이렇게 읽기전용 subscript를 구현하면 요구사항이 충족 됩니다.
    }
}
//이번에는 set 키워드를 추가하겠습니다.

protocol list1 {
    subscript(idx: Int) -> Int { get set }
}
//요구사항을 충족하려면 읽기와 쓰기가 동시에 가능해야합니다
struct DataStore1: list1 {
    subscript(idx: Int) -> Int{
        get{
        return 0
        }
        set {
            
        }
    }
}
//get은 필수이고 필요에따라 set 키워드는 생략할수 있습니다.
