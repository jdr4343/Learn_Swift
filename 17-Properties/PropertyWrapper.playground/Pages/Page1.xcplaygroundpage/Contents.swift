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
import Foundation

/*:
 # Property Wrapper
 */
//속성에 접근하는 코드를 별도의 타입으로 분리하는 PropertyWrapper에 대해 알아봅시다.
//보통 속성을 선언할때는 StoredProperties 형태로 선언합니다. 하지만 속성에 값을 저장하는 방식을 직접 구현하거나 속성이 리턴하는 값을 제어 하려면 ComputedProperties 형태로 선언합니다.ComputedProperties에는 값을 리턴하는 get블록과 값을 저장하는 set블록이 포함되는데 두블록에서 구현하는 코드는 보통 비슷한 패턴의 코드가 반복됩니다.
//Property Wrapper는 속성에 접근하는 코드를 별도의 타입으로 분리하고 여러곳에서 재사용할수 있도록 도와주는 특성입니다.

//구조체에 포함된 두속성은 ComputedProperties 선언되어있습니다. 그리고 설정데이터를 영구적으로 저장하기 위해서 UserDefaults를 사용하고 있습니다. get 블록에서는 UserDefaults 저장되어 있는데이터를 리턴하고 있고 set 블록에선 속성에 저장된 값을 UserDefaults에 저장하고 있습니다.

struct PlayerSetting {
   var initialSpeed: Double {
      get {
         return UserDefaults.standard.double(forKey: "initialSpeed")
      }
      set {
         UserDefaults.standard.set(newValue, forKey: "initialSpeed")
      }
   }
    //속성의 수가 늘어나면 비슷한 패턴의 코드를 반복적으로 구현해야 합니다. 그리고 문자열키를 사용하고 있기때문에 오타로인한 문자가 발생할 가능성도 있습니다.오늘 공부할 Property Wrapper를 사용하면 속성에 접근하는 코드를  별도의 타입으로 분리할수 있습니다. 이렇게 분리한 코드는 특성을 활용해서 반복적으로 활용할수 있기때문에 코드가 훨씬 단순해 집니다 그리고 잘못된 키로 인한 문제도 거의 발생하지 않습니다.
   var supportGesture: Bool {
      get {
         return UserDefaults.standard.bool(forKey: "supportGesture")
      }
      set {
         UserDefaults.standard.set(newValue, forKey: "supportGesture")
      }
   }
}


var currentSetting = PlayerSetting()
currentSetting.initialSpeed = 1.0
currentSetting.initialSpeed

currentSetting.initialSpeed = 1.5
currentSetting.initialSpeed

currentSetting.supportGesture
currentSetting.supportGesture = true
currentSetting.supportGesture




//: [Next](@next)
