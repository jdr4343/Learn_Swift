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

//: [Previous](@previous)

import Foundation

/*:
# Property Wrapper
*/
//Property Wrapper를 초기화하는 방법과 Property Wrapper가 가지고 있는 제약에 대해 공부해봅시다.

//Property Wrapper는 구조체와 클래스 열거형을 모두 지원합니다.
@propertyWrapper
class SimpleWrapper {
    //지금 처럼 타입에 Property Wrapper 특성을 추가하면 타입내부에서 wrappedValue 특성을 선언해야 합니다.보통은 ComputedProperty로 선언하지만 이렇게 StoredProperty로 선언하는 것도 얼만든지 가능합니다.
   var wrappedValue: Int
    var metadata: String?
   init() {
      print(#function)
      wrappedValue = 0
      metadata = nil
   }
    init(wrappedValue value: Int) {
        print(#function)
        wrappedValue = value
        metadata = nil
        
    }
    init(wrappedValue: Int,metadata: String?) {
        print(#function)
        self.wrappedValue = wrappedValue
        self.metadata = metadata
    }
}


struct MyType {
//속성을 추가하고 Property Wrapper를 적용하겠습니다.
    @SimpleWrapper
    var a: Int = 123
    //Property Wrapper 속성은 속성을 선언한 타입이 아니라 Property Wrapper가 스스로 초기화 합니다. 만약 MYType에서 a 속성을 초기화 해야한다면 아래에서 생성자를 초기화 할떄 초깃값을 전달해야 하겠죠 지금처럼 속성을 선언하고 기본값을 적용하지 않으면 Property Wrapper 안에있는 생성자가 자동으로 호출됩니다.
    @SimpleWrapper(wrappedValue: 456)
    var b: Int
    
    @SimpleWrapper(wrappedValue: 123, metadata: "number")
    var c: Int
    
    @SimpleWrapper(metadata: "number")
    var d: Int = 123
}

let t = MyType()

//제약 정리
//글로벌 스코프에서 Property Wrapper는 사용 할수없습니다.
//속성을 선언할때에는 다양한 키워드를 추가할수 있는데 lazy,weak,unowned,@NSCopying,@NsMamaged 키워드와 함께 사용하는건 불가능합니다.
//ComputedProperty에는 Property Wrapper를 적용할수 없습니다.
//subsclass 에서 Property Wrapper 가 적용된 속성을 오버라이딩 하는것과 Protoclol이나 익스텐션이 선언되어 있는 속성에는 Property Wrapper 를 적용할수 없습니다.
