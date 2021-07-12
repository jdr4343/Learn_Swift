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
 # Initializer Requirements
 ![init](init.png)
 */
//프로토콜에서 생성자를 선언하고 형식에서 요구사항을 구현해보겠습니다.
//프로토콜에서 생성자를 선언할때에는 메소드와 마찬가지로 바디를 생략한 형태로 선언합니다.

protocol Figure {
    var name: String { get }//속성과 생성자
    init(name:String)
    }

struct Rectangle: Figure {//구조체 선언 프로토콜 채용
var name: String
}
//지금 구조체에는 속성만 선언되어 있습니다.요구사항을 충족시키기 위해서 생성자를 구현 해야할거 같지만 지금도 요구사항을 충족시키고 있습니다.랙탱글 구조체에는 생성자가 구현되어 있지 앟습니다 이경우에는 멤버와이즈이니셜라이저가 자동으로 제공됩니다.멤버와이즈이니셜라이저는 속성이름과 동일한 아규먼트 레이블을 가지고 있는데 마침 프로토콜에 선언되어 있는 생성자와 동일합니다.그래서 프로토콜의 요구사항을 충족시킵니다 물론 멤버와이즈이니셜라이저 사용할지라도 생성자를 직접구현하는것도 가능합니다.

//생성자의 아규먼트 레이블을 바꿔보겠습니다.
protocol Figure1 {
    var name: String { get }//속성과 생성자
    init(n:String)//name을 n의로 바꾸겠습니다. 이렇게하면 멤버와이즈이니셜라이저를 통해 요구 사항을 충족시키지못해 생성자를 직접구현해야합니다.
    }

struct Rectangle1: Figure1 {//구조체 선언 프로토콜 채용
var name: String
    init(n: String) {
        name = n
    }
}

//새로운 Circle 클래스를 추가하고 Figue프로토콜을 실행하겠습니다.
//클래스는 상속을 고려해야하고 모든 서브클래스에서 프로토콜의 요구사항을 충족 시켜야합니다. 그래서 클래스에서는 required 이니셜라이저로 선언해야 합니다.
class Circle: Figure1 {
    var name: String
       required init(n: String) {
            name = n
        }
    }


//예외사항
//final 클래스는 더이상 상소되지 않기떄문에 상속을 고려할 필요가 없습니다. 그래서 required 없이 요구사항을 충족시킵니다.
final class Triangle: Figure1 {
    var name: String
        init(n: String) {
            name = n
        }
    }

//Circle 클래스를 상속 시켜보겠습니다.
class Oval: Circle {
    //Oval 클래스는 Circle 클래스의 멤버와 프로토콜 요구사항을 모두 상속합니다. 지금은 상속된 멤버를 통해서 자동으로 요구사항을 충족시킵니다.
    var prop: Int
    
    init() {
        prop = 0
        super.init(n: "Oval")
        //여기에서 구현한 생성자는 프로토콜에 선언 되어있는 생성자와 파라미터 목록이 다르기 때문에 요구사항을 충족시키지 못합니다. 그래서 프로토콜 선언과 동일한 생성자를 구현해야합니다. 이번에는 convenience init 으로 구현하겠습니다.
    }
    required convenience init(n: String) {
        self.init() //요구사항을 충족시키기 위해 반드시 지정 생성자로 구현해야하는것은 아닙니다 지금처럼 convenience 구현하더라도 요구사항을 충족시킵니다. 다만 여기에서도 required가 필요합니다.
        
    }
}

protocol Grayscale {
   // init(white: Double)
    init?(white: Double)  //이번에는 프로토콜에 선언되어있는 생성자를 failable 이니셜라이저로 바꾸겠습니다.
}
//새로운 구조체를 추가하고 프로토콜을 채용하겠습니다. 프로토콜 요구사항을 충족시키는게 주목적이기때문에 실제 구현은 생략하겠습니다.
struct Color: Grayscale {
    //먼저 생성자를 failable 이니셜라이저로 선언해보겠습니다.
    //init?(white: Double) {
        //프로토콜을 보면 non-failable 이니셜라이저로 선언되어 있죠 non-failable 이니셜라이저 요구사항을 failable 이니셜라이저로 충족할수 없다는 에러가 발생합니다. 컬러 구조체에서 선언한 생성자는 옵셔널 컬러인스턴스를 생성합니다. 반면 프로토콜에서 요구하는 생성자는 non 옵셔널 인스턴스를 생성합니다. 옵셔널과 non-옵셔널은 다른 형식으로 판단되기 때문에 요구사항을 충족시키지 못합니다. 이번에는 물음표를 느낌표로 바꿔보겠습니다
    init!(white: Double) {
        //이렇게 하면 요구사항을 충족시키는데 초기화에 실패한 경우에는 런타임 오류가 발생합니다. 프로토콜에서 failable 이니셜라이저로 선언되어 있다면 failable 와 non- failable 모두 요구사항을 충족 시킵니다.
    }
}
