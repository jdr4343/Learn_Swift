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
import UIKit

/*:
 # Memberwise Initializer
 */
//구조체가 자동으로 제공하는 생성자입니다.파라미터의 수가 구조체의 포함된 속성의 수와 동일하고 파리미터 이름과 아규먼트 레이블이 속성의 이름과 동일합니다.

struct First {
   let a: Int
   let b: Int
   let c: Int
}
let f = First(a: 1, b: 2, c: 3)
//자동 완성을 보면 Memberwise Initializer가 표시되죠 이걸 사용해서 이렇게 인스턴스를 만들수 있습니다 아규먼트레이블이 속성의 이름과 동일하고 순서도 동일합니다. 그래서 어떤 값이 어떤속성을 초기화 하는지 직관적으로 이해할수 있습니다.
//first 구조체에서 속성 선언을보면 모든 속성이 기본값을 가지고 있지 않습니다.

struct Second {
   let a: Int = 0
   let b: Int = 1
   let c: Int
}
//second 구조체는 마지막 속성 뺴고는 기본값을 가지고 있습니다.
let s = Second(c: 2)
//자동완성에 표시되는 항목이 다르죠 이번에는 이렇게 생성자에서 c만 받고 있습니다.여기에서 속성을 선언과 동시에 초기화 했기때문에 생성자에서 다시초기화 할 필요없습니다.그래서 이때는 초기화 되지않은 c만 초기화되는 Memberwise Initializer 를 제공합니다. 그리고 상수에 제공되어 있기떄문에 초기화 하면 값을 바꿀수 없습니다.

struct Third {
   var a: Int = 0
   var b: Int = 1
   var c: Int
//third 구조체는 마지막 속성 빼고는 기본값을 가지고 있고 변수로 선언되어 있습니다.
    //파라미터가 하나인 생성자를 직접 추가하겠습니다.
    //init(value: Int) {
    //    a = value
    //    b = value
    //    c = value
        //1>이렇게 구조체에서 생성자를 직접 구현하면 Memberwise Initializer는 더이상 제공되지 않습니다.그래서 여기에서 컴파일 에러가 발생하는데 두 생성자가 모두 필요하다면 파라미터 3개를 받는 생성자를 하나더 만들어야 겠죠 그런데 모든 이니셜라이저를 직접구현하는것은 번거롭고 직접구현하는 생성자와 Memberwise Initializer 함께 사용할수 있는 방법이 있습니다.
    }
   
//2> 이렇게 구조체 선언은 생성자가 포함되지 않은 상태로 두고 extension에서 필요한 생성자를 구현하면 Memberwise Initializer가 계속제공됩니다.
extension Third {
    init(value: Int) {
        a = value
        b = value
        c = value
    }
        
}

let t = Third(a: 1, b: 2, c: 3)
    //자동완성을 보면 a b c 를 모두 받는 생성자와 c 만 받는 생성자가 모두 제공 됩니다. 속성을 선언할때 var와 let 중 무엇으로 선언되어 있는지 속성의 기본값이 선언되어 있는지에 따라서 제공되는 생성자가 달라집니다.
   


//정리 저장속성
//구조체는 모든 속성을 초기화 하는 생성자를 제공합니다.
//파라미터의 수는 속성의 수와 동일하고 아규먼트레이블과 파라미터 이름은 속성의 이름과 동일합니다.
//속성이 let으로 선언되어 있고 기본값을 가지고 있다면 생성자 파라미터 목록에선 제외 됩니다.
//속성이 var로 선언되어 있다면 해당 속성이 파라미터 목록에 포함되지 않는 생성자와 포함되어 있는 생성자를 함께 제공합니다.




