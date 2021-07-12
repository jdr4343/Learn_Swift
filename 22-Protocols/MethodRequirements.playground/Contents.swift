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
 # Method Requirements
 ![method](method.png)
 */
//프로토콜에서 메소드를 선언하고 형식에서 메소드 요구사항을 구현 해보겠습니다

//프로토콜에서 메소드를 선언할때에는 메소드 헤드부분만 작성합니다. 다시말해서 {} 메소드바디는 포함되지 않습니다.
//타입 메소드를 선언 할때에는 func 키워드 앞에 static 키워드를 추가합니다.
//만약 프로토콜을 값형식이 채용할수 있고 메소드 내부에서 속성값을 변경해야한다면 마지막 처럼 펑크키워드앞에 mutating 키워드를 추가해야합니다 이렇게 선언되어 있는 경우 값형식 전용이라고 생각 할수있습니다.
//하지만 프로토콜에서 선언된 mutating 키워드는 메소드에서 속성을 변경할수 있어야 한다는 요구사항을 표현할 뿐입니다. 그래서 참조형식에서도 문제없이 채용할수 있습니다.

protocol Resettable {
    func reset()
}
class Size: Resettable {
    var width = 0.0
    var height = 0.0
    
    func reset() {
        width = 0.0
        height = 0.0
        //모든속성을 0으로 초기화 하고 있습니다.메소드 이름 파라미터형식 리턴형이 모두 동일합니다.그래서 Resettable의 요구사항을 모두 충족합니다.
    }
}

//프로토콜을 메소드의 실제 구현은 상관하지 않습니다. 메소드이름, 파라미터 형식, 리턴형만 일치 시켜주고 메소드 바디는 형식에 맞게 자유롭게 구현합니다.

//Size class를 구조체(static)로 바꿔 보겠습니다. 값형식의 인스턴스 메소드에서 속성 값을 바꾸려면 func 키워드 앞에 mutating 키워드를 추가해야합니다.프로토콜은 mutating 키워드에 따라서 메소드를 구분합니다 이렇게 값형식에서 속성을 바꾸는 메소드라면 프로토콜에서도 선언할떄에도 mutating 키워드를 추가해야합니다.

protocol Resettable2 {
   mutating func reset()
}
struct Size2: Resettable2 {
    var width = 0.0
    var height = 0.0
    
   mutating func reset() {
        width = 0.0
        height = 0.0
    }
}

//이번에는 리셋 메소드를 타입 메소드로 선언하겠습니다. 
protocol Resettable3 {
   static func reset()
}
class Size3: Resettable3 {
    var width = 0.0
    var height = 0.0
    
    func reset() {
        width = 0.0
        height = 0.0
        
    }
    static func reset() {
        //그리고 사이즈 클래스에 타입메서드를 추가하겠습니다.이렇게 하면 요구사항을 충족합니다.
     
    }
}
