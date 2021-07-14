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
//저장 속성과 지연 저장 속성에 대해 알아보겠습니다.
/*:
 # Stored Properties
 ![syntax](syntax1.png)
 */
//저장속성 : 형식내부에 변수와 상수를 선언하면 속성이 됩니다.
//클래스와 구조체에서 선언가능함
//인스턴스에 속한 속성 인스턴스가 생성될때마다 새로운 메모리 공간인 생김 속성이 저장된 값은 인스턴스마다 다름
//선언과 동시에 기본값을 지정하는 경우에는 형식추론을 통해 자료형 생략 가능 기본값을 생략한다면 자료형을 명시적으로 선언해야함

//새로운 클래스를 만들고 저장속성을 선언해 보겠습니다.
class Person {
    let name: String = "John Doe"
    var age: Int = 12
}
//구조체로 선언
struct People {
    let name: String = "Jhsua"
    var age: Int = 12
}
/*:
 # Explicit Member Expression
 ![syntax](syntax2.png)
 */
//새로운 인스턴스를 만들고 속성에 저장된 값을 확인 해보겠습니다.
let p = Person()
p.name
p.age
//점문법 Explicit Member Expression
//속성에 저장된 값 변경
p.age = 99
//구조체는 age 속성이 바로 선언되어 있지만 인스턴스를 생성하고 상수에 저장하면 구조체 인스턴스를 상수에 저장하면 구조체에 포함된 모든 속성이 상수가 됩니다.
//구조체의 가변성은 속성의 가변성에 영향을 줍니다.저장속성을 바꿔야한다면 구조체 인스턴스를 변수에 저장하여야 합니다.
var q = People()
q.age = 14


/*:
 # Lazy Stored Properties
 ![lazy](lazy.png)
 ![lazy-syntax](lazy-syntax.png)
 */
//지연 저장 속성 Lazy Stored Properties
//저장속성이 초기화 되는 시점은 인스턴스 초기화 시점과 같습니다.
//지연 저장 속성은 초기화를 지연시킵니다. 인스턴스가 초기화 되는 시점이 아니라 속성에 처음 접근하는 시점에 초기화를 진행합니다.

//초기화 시점이 지연되기 떄문에 몇가지 제약이 있습니다.
//지연 저장 속성은 인스턴스가 초기화 된 이후에 개별적으로 초기화 됩니다. 그래서 항상 변수 저장속성으로 초기화 합니다.
//그리고 생성자에서 초기화 하지 않기 떄문에 선언시점에 기본값을 저장하여야합니다.

struct Image {
    init() {
        print("new Image")
    }
}
struct Blog {
    let title: String = "Title"
    let context: String = "Context"
    lazy var attachment: Image = Image()
    
    //날짜를 문자열로 바꾸는 코드는 한줄로 구현하기 어렵기 때문에 클로저를 활용하겠습니다.
    let date: Date = Date()
    lazy var formatterDate: String = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date)
        
    }()//여기에서 핵심은 클로저 뒤에있는 ()입니다.()를 붙이면 클로저가 초기화 시점에 호출됩니다. 그래서 클로저가 리턴하는 값이 속성에 저장됩니다.
    //지금은 지연저장 속성으로 선언되어 있기 때문에 속성에 처음 접근하는 시점에 클로저가 호출됩니다. 여기에서 date속성에 접근하고 있는데 클로저가 호출되는 시점에는 속성이 이미 초기화 된 시점입니다.
    //주의 할점은 저장속성을 클로저로 초기화 할떄에 다른 속성에 접근해야 한다면 lazy 지연저장 속성으로 선언해야합니다.
}

var post = Blog()
post.attachment
