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


import Foundation

/*:
 # Required Initializer
 ![required](required.png)
 */
//모든 서브클래스에 구현해야 하는 필수 생성자에 대해 공부합시다.
//Required Initializer : 필수 생성자
//문법은 단순합니다. init 키워드 앞에 Required 를 추가 합니다. 나머지 문법은 일반 initializer와 동일합니다.
class Figure {
   var name: String

  required init(name: String) {//이렇게 하면 서브클래스에서 반드시 동일한 initializer를 직접 구현해야 합니다.
   // 지금은 Ractengle class 가 initailizer를 직접 구현하고 있지 않은데 에러가 발생하지는 않습니다.Required Initializer몇가지 규칙이 있습니다.
    //지금은 모든 속성이 기본값을 가지고 있고 initializer를 직접 구현하지 않았기 때문에 Required Initializer가 서브클래스로 직접 상속되겠죠 이런 경우에는 직접 구현하지 않아도 괜찮습니다.Rectangle class가 Required Initializer를 상속받지 않도록 간단한 initializer를 만들겠습니다.
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
}
//Rectangle class 에서 name 파라미터를 받는 initializer를 직접구현 하도록 강제 하고 싶다면 어떻게 해야할까요 이때 필요한게 Required Initializer 입니다.
class Rectangle: Figure {
   var width = 0.0
   var height = 0.0
    //이렇게 initializer을 상속하면 더이상 Required Initializer를 상속받지 못하기 때문에 오류가 발생하게 됩니다.
    init() {
        width = 0.0
        height = 0.0
        super.init(name: "unknown")
        
    }
    //Required Initializer 를 구현하겠습니다
    required init(name: String) {
        width = 0.0
        height = 0.0
        super.init(name: name)
        //이렇게 하면 에러가 사라집니다 슈퍼클래스와 동일한 initializer를 서브클래스에 구현하는것을 오버라이딩이죠.
        //그리고 오버라이딩 할때에는 init 키워드앞에 오버라이딩을 추가 해야하지만 이번에는 이런규칙이 적용되지 않습니다.서브 클래스에서Required Initializer구현할때에는 슈퍼클래스와 완전히 동일한 형태로 구현합니다.
        //이렇게 하는 이유는 랙탱글을 상속하는 다른 서브클래스들이 다시 동일한 initializer을 구현하도록 강제하기 위해서 입니다.
    }
}


