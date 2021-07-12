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
//프로토콜을 단순하게 정리하면 형식에서 공통적으로 제공하는 멤버목록 입니다.
//형식에서 구현해야되는 멤버가 선언되어 있습니다. 실제구현은 프로토콜에 포함되어 있지 않습니다.
//대신 클래스와 구조체 같은 형식들이 프로토콜에 선언되어 있는 멤버를 실제로 구현합니다. 이것을 프로토콜을 따른다라고 표현하거나 프로토콜을 채용하고 있다고 표현합니다.
//프로토콜을 채용한 형식은 반드시 프로토콜에 선언되어 있는 필수 멤버를 모두 구현해야합니다. 그래서 이런멤버들을 요구사항이라고 부르기도 합니다.
/*:
 # Defining Protocols
 ![define](define.png)
 ![protocol-inheritance](protocol-inheritance.png)
 */
//프로토콜은 상속을 지원합니다.프로토콜은 클래스와 달리 다중상속을 허용합니다.
protocol Something {
    func doSomething()//메소드 선언 이제 프로토콜을 채용한 형식은 doSomething 메소드를 채용해야 합니다.반드시 프로토콜을 채용한다고 명시적으로 선언해야합니다.
}





/*:
 # Adopting Protocols
 ![adopting](adopting.png)
 */
//프로토콜 채용 문법
//클래스가 다른 클래스를 상속하고 있고 동시에 프로토콜을 채용하고 있다면 항상 슈퍼 클래스 이름을 먼저 나열합니다.

struct Size: Something {
    func doSomething() {
        
    }
    //프로토콜에 선언되어 있는 doSomething 메소드를 구현해줘야합니다.
//프로토콜을 채용 할떄에는 항상 이런 패턴으로 구현 합니다.
}




/*:
 # Class-Only Protocols
 ![class-only](class-only.png)
 */
//기본적으로 프로토콜을 채용할수 있는 형식에는 재한이 없습니다.
protocol SomethingObject: AnyObject, Something {//이렇게 AnyObject를 상속하면 클래스 전용 프로토콜로 선언됩니다.
    
}
//그런다음 프로토콜을 채용 해보겠습니다. class 전용이기 때문에 구조체로는 채용할수 없습니다.
class Object: SomethingObject {
    func doSomething() {
        //이렇게 프로토콜에 선언되어 있는 메소드를 구현하면 오브젝트 클래스가 SomethingObject 클래스를 채용합니다.
    }
}

