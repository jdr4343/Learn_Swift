//
//  Mastering Swift
//  Copyright (c) KxCoding <help@kxcoding.com>
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
//함수 선언과 메소드 선언에 추가할수있는 어트래뷰트 그대로 해석해보면 버릴수 있는 결과

//Discardableresult 함수가 리턴한결과를 사용하지 않고 버린다,무시한다.
import UIKit


func doSomething() {// 값을 리턴하지 않고
   print("Something secret")
}
@discardableResult
func saySomething() -> String {//문자열을 리턴
   return "Hello"
    //resuit 함수가 리턴하는 결과
}

class ViewController: UIViewController {
      
   override func viewDidLoad() {
      super.viewDidLoad()
      
      doSomething()

      saySomething()
   }
}
//만약선언을 수정할수 없을떄에는  _ = saySomething() 이렇게 와일드카드패턴을 사용해 함수가 리턴하는 값을 사용하지 않는다고 명시적으로 표현했기떄문에 경고가 뜨지 않습니다.
