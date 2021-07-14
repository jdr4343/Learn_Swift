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
 # Type Properties
 ## Stored Type Properties
 ![type1](type1.png)
 ![type2](type2.png)
 */
//형식속성 : 형식과 연관된 메소드를 선언하고 접근하는 방법에 대해 알아봅시다
//저장속성은 인스턴스마다 다른 값이 저장됩니다. 그리고 계산속성이 리턴하는 결과는 인스턴스마다 달라집니다.
//이렇게 되는 이유는 인스턴스를 만들때 새로운 메모리 공간이 생성되기 때문입니다 이런 속성을 하나로 묶어서 인스턴스 프로퍼티 인스턴스 속성이라고 합니다.
//형식속성은 형식자체에 속한 속성입니다. 인스턴스마다 개별공간이 생성되지 않고 모든인스턴스가 공유하는 하나의 공간만 생성됩니다.그리고 모든 인스턴스가 여기에 저장된 값을 공유합니다.
//형식속성은 클래스 구조체 열거형에 모두 추가할수 있습니다.저장속성과 계산속성을 형식속성으로 선언할수 있습니다.각각 저장 형식 속성과 계산 형식 속성이라고 부릅니다.

//저장 형식 속성의 문법을 보면 static 키워드로 시작하는걸 뺴면 저장속성의 문법과 동일합니다.
//저장속성은 기본값을 생략하고 생성자에서 속성을 초기화 할수 있습니다. 하지만 형식자체에는 생성자가 없기떄문에 기본값을 생략할수 없습니다.
//항상 원하는 값으로 초기화 해야합니다.
//저장속성은 인스턴스를 초기화할때 함꼐 초기화 되지만 저장 형식속성은 속성에 최초로 접근할때 초기화 됩니다.
//형식속성은 특정인스턴스에 속한 속성이 아니기 때문에 인스턴스 이름으로는 접근할수 없습니다.반드시 위의 문법처럼 형식의 이름을 통해 접근해야 합니다.


//새로운 클래스를 선언하고 저장형식속성을 추가해보겠습니다.
class Math {
    static let pi = 3.14
}
let m = Math()
//m.pi 만약 pi가 인스턴스 속성이라면 인스턴스 이름으로 접근 해야합니다. 그러나 pi는 형식속성이기 때문에 형식이름을 통해 접근해야 합니다.
Math.pi
//여기에서 Pi는 형식속성이기 떄문에 지연속성입니다.그래서 속성에 처음 접근하는 시점에 초기화됩니다.

/*:
 ## Computed Type Properties
 ![type3](type3.png)
 ![type4](type4.png)
 */
//계산 형식 속성
//문법은 조금전과 마찬가지로 static키워드로 시작하는걸 빼면 계산속성과 같습니다.

//아래의 문법을 보면 static이 아니라 class로 선언하고 있는데 이문법은 class에서 제한적으로 선언됩니다.
//속성을 static으로 선언하면 subclass에서 오버라이딩이 금지됩니다. 반면 class키워드로 선언하면 오버라이딩이 허용됩니다.

//간단한 계산형식 속성을 구현하겠습니다.

enum Weekday: Int {
    case sunday = 1, mondaym, thesday, wednesday, thursday, friday, saterday
    
    static var today: Weekday {
        let cal = Calendar.current
        let today = Date()
        let weekday = cal.component(.weekday, from: today)
        //여기 까지 구현하면 weekday에 오늘을 나타내는 정수가 저장됩니다.이정수를 기반으로 새로운 weekday를 만들고 리턴하겠습니다.
        return Weekday(rawValue: weekday)!
    }
}
Weekday.today






