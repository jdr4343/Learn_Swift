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
 # Instance Method
 ![Method](method.png)
 ![Call Method](call-method.png)
 */
//인스턴스와 연관된 메소드를 구현하고 호출하는 방법
//메소드는 특정형식에 속한 함수입니다.문법은 함수와 동일합니다. 단지 구현하는 위치가 다르고 인스턴스를 통해 호출한다는 차이점 밖에 없습니다.
//함수는 특정형식에 연관되지 않은 동작을 구현하고 메소드는 특정형식에 연관된 동작을 구현합니다.
//인스턴스 메소드는 class.enum,struct에서 구현할수 있습니다.
//인스턴스 속성처럼 특정 인스턴스와 연관된 동작을 구현합니다.인스턴스마다 실행 결과가 달라집니다.
//메소드 호출 문법은 함수 호출과 한가지 차이점을 가지고 있습니다. 함수는 함수 이름많으로 호출하지만 메소드는 인스턴스 이름을 통해 호출합니다. 이점을 제외한 나머지 문법은 함수 호출과 동일합니다.


//구현한 코드를 보면 클래스 내부에서 구현했다는 점을 빼면 함수와 차이가 없습니다.
//doSomething() 에서 data 속성에 접근하고 있고 call()에서는 다른 인스턴스 메소드를 호출하고 있습니다.
//인스턴스 메소드에서 다른 인스턴스 멤버에 접근할떄에는 보통 self를 생략하고 이름 만으로 접근합니다.
class Sample {
    var data = 0
    static var sharedData = 123
    //메소드 추가
    func doSomething(){
        print(data)
        //그러면 타입멤버에는 어떻게 접근할까요 여기에서 sharedData 속성에 접근해보겠습니다.
        Sample.sharedData//에러 메시지를 보면 statick 멤버를 인스턴스에서 사용할수 없다고 나와있습니다. static 멤버는 타입멤버와 같습니다.인스턴스 멤버에서 타입멤버에 접근할때에는 Sample 이렇게 형식멤버를 통해서 접근합니다.
 }
    func call() {
        doSomething()
    }
}
//인스턴스를 만든 다음에 메소드를 호출해보겠습니다.
let a = Sample()
a.data
a.doSomething()
a.call()
//여기서 a를 생략해버리면 함수를 호출하는것이기 때문에 메소드는 반드시 이름으로 호출해야 합니다.

//클래스에서는 인스턴스 메소드가 인스턴스 속성을 얼마든지 바꿀수 있습니다.하지만 구조체에서는 메소드를 mutating으로 선언해야 합니다.값형식에서 속성을 바꾸는 메소드를 구현 할떄는 반드시 mutating으로 선언해야 합니다.
struct Size {
    var width = 0.0
    var height = 0.0
    
//속성값을 1씩 증가 시키는 인스턴스 메소드를 만들겠습니다.
    mutating func enlarge() {
    width += 1.0
    height += 1.0
    }
}
//mutating으로 선언해야 한다면 변수에 저장해야 합니다.
var s = Size()
s.enlarge()























