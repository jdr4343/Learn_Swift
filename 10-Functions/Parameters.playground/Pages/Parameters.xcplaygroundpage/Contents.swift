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
 # Parameters
 ![define](define.png)
 ![param](param.png)
 */
func add(a: Int, b: Int) -> Int {//포멀 파라미터
   return a + b
    //파라미터는 함수 바디에서 사용할수있는 임시 상수입니다.
}




/*:
 ## Calling Functions
 ![call](call.png)
 */


add(a: 3, b: 4)//액츄얼 파라미터, 아규먼트
add(a: 13, b: 24)
//함수를 호출 할떄 선언한 아규먼트는 함수선언에 있는 포멀파라미터 a로 복사되어서 계산에 사용된다.










/*:
 ## Default Value
 ![defval](defval.png)
 */

func sayHello(to: String = "Stranger") {
print("Hello, \(to)")
}
sayHello(to: "Swift")
sayHello()



//파라미터의 스코프는 함수바디로 제한됩니다. 다시말해서 여기에 있는 브레이스와 여기에 있는 브레이스 사이로 제한됩니다. say hello의 to 파라미터는 함수바디에서만 사용할수 있습니다.만약에 글로벌 스코프에서 to라고 적으면 컴파일 에러가 발생합니다. 여기에서는 to를 인식할수가 없습니다. 마찬가지로 add함수를 보면 파라미터 a 와 b 는 함수바디에서는 사용할수 있지만 함수바디 밖에서는 사용 할수 없습니다. 그래서 마찬가지로 컴파일 에러가 발생하게 됩니다.














