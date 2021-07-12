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
 # Property Requirements
 ![property](property.png)
 */
//프로토콜에서 속성을 선언하고 형식에서 속성 요구사항을 구현해보겠습니다.

//형식에서 속성을 선언할떄는 가변성에 따라서 let ,var키워드를 선언합니다.하지만 프로토콜에서는 항상 var키워드를 선언합니다.
//프로토콜에 포함된 var키워드는 가변성과는 아무런 관련이 없습니다. 대신 선언하는 멤버가 속성이라는것을 나타냅니다.
//이어서 속성이름과 형식을 선언합니다 그런다음 {}사이에는 get 키워드와 set키워드를 위치합니다.이 두키워드가 속성에 가변성을 결정합니다.두키워드가 모두 포함되어 있다면 형식에서 읽기와 쓰기가 가능한 속성을 선언해야합니다. 반대로 set을 생략하고 get만 포함되어있는 경우에는 형식에서 읽기전용속성으로 선언해도 되고 읽기,쓰기가 모두가능한 속성으로 선언해도 문제가 없습니다.
//형식속성으로 선언할떄에는 바키워드 앞에 스태틱키워드를 추가합니다.

//Figure 프로토콜을 선언하겠습니다.
protocol Figure {
    //var name: String { get }// 읽기 쓰기 가능 읽기전용속성 가능 /var, let
   // var name: String { get set }// 읽기와 쓰기가 모두가능한 속성을 선언해야함 /var
   static var name: String { get set }//static을 선언하면 모든 속성을 형식 속성으로 선언해야합니다.
}
//Rectangle 구조체를 선언하고 Figure 프로토콜을 채용하겠습니다.

struct Rectangle: Figure {
       static var name = "Rect"//저장속성으로 선언하여 요구사항을 충족했습니다.
    }

struct Triangle:Figure {
   static var name = "Truangle"
}

//Circle 구조체를 선언하고 계산속성을 추가해 보겠습니다.
//struct Circle: Figure {
class Circle: Figure {//static키워드로 선언된 속성은 서브클래스로 상속되지만 오버라이딩이 불가능합니다. 오버라이딩을 허용하려면 class로 선언해야합니다.
   class var name: String {
        get {
        return "Circle"//이런 식으로 작성하여도 프로토콜의 요구사항을 충족 시킵니다.
        }
    set {
    }
   }
}


