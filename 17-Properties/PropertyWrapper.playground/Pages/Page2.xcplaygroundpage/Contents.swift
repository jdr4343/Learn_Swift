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
//Property Wrapper를 구현해 보겠습니다.
//먼저 이전 페이지에서 ComputedProperties 구현했던 코드를 별도의 타입으로 분리 하겠습니다.

struct PlayerSetting {
    //여기에 Property Wrapper를 적용하겠습니다 우리가 Property Wrapper를 구현하면 타입이름과 동일한 특성이 제공 됩니다.
    //이제 부터 initialSpeed에 저장하는 값은 메모이에 저장되는 것이 아니라 UserDefault의 set에서 구현한 방식으로 UserDefault에 저장됩니다. 마찬가지로 initialSpeed 속성에 접근하면 get에서 구현한 방식으로 값을 리턴합니다.이렇게 동작하는데 필요한 코드는 컴파일러가 컴파일 시점에 자동으로 추가합니다.
    @UserDefaultsHelper(key: "initialSpeed", defaultValue: 1.0)
   var initialSpeed: Double
    @UserDefaultsHelper(key: "supportGesture", defaultValue: true)
   var supportGesture: Bool
}
//특성을 하나 추가 하겠습니다. 이특성은 타입을 PropertyWrapper로 만들어 주는 특성입니다 이특성은 구조체 열거형 클래스 선언에서 같은 방법으로 사용할수 있습니다.
@propertyWrapper
struct UserDefaultsHelper<Value> {//모든 타입을 지원할수 있도록 제네릭 타입으로 선언하겠습니다.
    let key: String
    let defaultValue: Value
    //위의 두 코드는 일반적인 타입이라면 아무런 문제가 없는 코드인데 Property Wrapper 특성을 추가 했기 때문에 에러메시지가 설명하는 것처럼 wrappedValue라는 특별한 특성을 하나 추가해야합니다.
    var wrappedValue: Value {
        //유저 디폴트에서 값을 읽어오고 값을 저장하는 코드를 구현하겠습니다.
        get {
            UserDefaults.standard.object(forKey: key) as? Value ?? defaultValue//읽어온 값을 Value타입으로 타입 캐스팅해서 읽어오고 리턴 할수 없다면 default value를 리턴하겠습니다.
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: key)
        }
    }
}




var currentSetting = PlayerSetting()

currentSetting.initialSpeed
currentSetting.initialSpeed = 1.5
currentSetting.initialSpeed

currentSetting.supportGesture
currentSetting.supportGesture = false
currentSetting.supportGesture

//이전 페이지에 있는 코드와 비교하면 훨씬 단순해 졌습니다.
//새로운 속성을 추가하고 같은 방법으로 관리하고 싶다면 Property Wrapper 만든 특성을 추가하고 키와 디폴트 밸류를 전달하는 것으로 끝납니다 그리고 나중에 값을 관리하는 방식을 바꾸고 싶다면 Property Wrapper 형식의 구조체만 수정하면 나머지 부분은 자동으로 바뀝니다.



//: [Next](@next)
