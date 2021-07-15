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
    //모든 속성을 기본값으로 초기화 하는 메소드
    func resetAll() {
        //여기에서 initialSpeed 타입은 더블이죠 reset은 UserDefaultsHelper에 구현했는데  이 코드는 더블 인스턴스에서 리셋을 호출하고 있습니다. 더블에는 구현되어 있지 않은 메소드니깐 당연히 컴파일오류 입니다.에러 메시지를 보면 여기에서 reset메소드를 사용하려면 Wrapper가 필요하다고 나와있습니다.에러에서 픽스를 눌러보면 속성의 이름 앞에 언더스코어 문자가 추가됩니다.
        //initialSpeed 속성은 Property Wrapper가 적용되어 있는 속성이죠 원래 이름으로 접근하면 Property Wrapper가 랩핑한 값에 접근합니다. 다시말해서 wrappedValue 속성이 리턴하는 값에 접근합니다. 우리가 리셋메소드를 호출하려면 wrapping하고 있는 값이 아니라 Property Wrapper 자체에 접근 해야합니다.이렇게 속성 앞에 _ 문자를 붙이면 Property Wrapper에 접근합니다. 어떤 속성에 Property Wrapper를 적용했다면 컴파일러는 Property Wrapper에 접근할떄 사용하는 특별한 속성을 자동으로 추가해줍니다. 그리고 이속성의 이름은 속성의 이름앞에 _ 문자가 추가된 형태입니다. 동일한 속성의 이름이 있으면 안되니깐 이렇게 _ 문자를 추가해서 중복을 피하는 것 입니다.
        _initialSpeed.reset()
        _supportGesture.reset()
        //이렇게 타입 내부에서는 _로 시작하는 속성을 통해서 Property Wrapper 바로 접근 할수있는데 타입 외부에서는 불가능 합니다. 컴파일러는 Property Wrapper에 접근하는 속성을 추가할떄 엑세스 레벨을 priviate로 선언합니다. 그래서 타입 외부에서는 Property Wrapper에 직접 접근할수 없습니다. 만약 타입 외부에서 Property Wrapper 접근해야 한다면 ProjectedValue라는 속성을 통해서 간접적으로 접근할수 있습니다.
    
    }
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
        //projectedValue를 통해 타입 외부에서 Property Wrapper에 접근하는 방법을 알아봅시다.
    //UserDefaultsHelper를 Property Wrapper로 선언했다고 해서 단순히 읽고 쓰는 기능만 구현해야하는건 아닙니다. 필요한 기능이 있다면 타입에 얼마든지 자유롭게 추가할수 있습니다.
        //여기에서 기본값으로 초기화하는 리셋메소드를 쓰겠습니다.
        func reset() {
            UserDefaults.standard.setValue(defaultValue, forKey: key)
        }
    var projectedValue: Self { return self }
    //보통 속성의 타입은 PropertyWrapper와 동일하고 이렇게 Self를 리턴하도록 구현합니다.반드시 이렇게 해야되는건 아니고 필요에 따라서 원하는 형태로 구현해도 괜찮습니다. 하지만 속성의 이름은 반드시 projectedValue로 선언해야 합니다. Property Wrapper 타입에 이속성이 선언되어 있다면 컴파일러는 특별한 속성을 자동으로 추가해 주는데 만약 속성의 이름을 다른 이름의로 선언하면 자동으로 추가해주지 않습니다.
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

//위에서 작성한 projectedValue에 접근해 보겠습니다.속성이름 앞에 $ 문자를 추가합니다.
currentSetting.$initialSpeed.reset()
//이런 패턴은 swiftUI에서 바인딩할떄 자주사용합니다.

//정리
//속성에 Property Wrapper 특성을 추가하면 컴파일러가 필요한 코드를 자동으로 추가 해줍니다.
//오늘 알아본건 _ 로 문자로 시작하는 속성과 $ 문자로 시작하는 속성입니다.속성의 이름만으로 접근하면 Property Wrapper가 랩핑하고 있는 실제 값에 접근합니다.
//이렇게 _ 문자로 시작하는 속성은 타입내부에서 Property Wrapper에 접근할때 사용합니다.하지만 _ 시작하는 래퍼는 엑세스 레벨이 priviate이기떄문에 타입 외부에서 접근하기 불가능합니다.
//타입 외부에서 접근할때는 $ 문자로 시작하는 속성을 사용합니다. 이속성은 Property Wrapper 타입에 projectedValue 속성이 선언되어 있는 경우에만 자동으로 적용됩니다.
//: [Next](@next)
