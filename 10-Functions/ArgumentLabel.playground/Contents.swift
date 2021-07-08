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
 # Argument Label
 */


/*:
 ## Syntax
 ![arg1](arg1.png)
 ![arg2](arg2.png)
 */
//아규먼트 레이블을 사용하는 가장큰이유는 가독성을 위해서 입니다.


func sayHello(name: String) {
   print("Hello, \(name)")
}

sayHello(name: "Swift")

//함수를 호출할떄는 아규먼트 레이블을 사용 해야합니다.
func sayHello(to nickname: String) {
print("Hello, \(nickname)")
}
//이 함수에서 아규머트 레이블이 to 파라미터가 name 입니다.
//같은 이름인데도 컴파일 오류가 발생하지 않습니다.스위프트에서는 같은 이름을 가진 변수나 상수를 선언하면 컴파일 오류가 발생했죠? 함수도 마찬가지입니다. 지금 에러가 발생하지 않은이유는 함수이름에 아규먼트 레이블이 포함 되기 떄문입니다.
// 지금 선언된 함수들은 name 과 to 로 아규먼트레이블이 구분되어 있기 떄문에 컴파일 오류가 발생 하지 않는 것입니다.
sayHello(to: "Swift")
//sayHello(nickname: "hi") 파라미터 이름은 함수 호출에서는 사용할수없습니다. 반드시 아규먼트 레이블을 사용해야 합니다.
//파라미터 이름은 함수바디에서 함수로 전달된 값에 접근 할떄 사용하고 아규먼트은 함수를 호출 하면서 아규먼트를 전달할떄 사용합니다.

func sayHello(_ name: String) {
    print("Helo, \(name)")
}
sayHello("jihun")
//아규먼트 생략가능. 아규먼트 레이블은 주로 to,in,with와 같은 전치사를 주로 씁니다. 
