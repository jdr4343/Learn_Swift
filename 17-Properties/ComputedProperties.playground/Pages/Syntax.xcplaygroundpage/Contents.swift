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
 # Computed Properties
 ![computed](computed.png)
 */
//계산 속성 : 다른 속성을 기반으로 동작하는 계산 속성에 대해 알아 보겠습니다.
//Computed 수학적계산이 실행된다는 뜻은 아닙니다. 다른속성을 기반으로 속성값이 결정된다는 뜻입니다.
//저장속성은 값을 저장할 메모리 공간을 가지고 있지만 계산속성은 메모리 공간을 가지지 않습니다.
//대신 다른 속성에 저장된 값을 읽어서 필요한 계산을 읽어서 필요한 계산을 실행다음에 리턴하거나 속성으로 전달된 값을 다른 속성에 저장합니다.
//이런 특징 떄문에 속성에 접근할때마다 다른깂이 리턴될수 있습니다. 항상 변수로 선언해야 한다는 뜻입니다.
//걔산 속성응 클래스 구조체 열거형에 추가할수 있습니다.


//저장속성과 달리 선언 시점에 기본값을 저장할수 없기때문에 형식추론을 사용할수 없고 자료형을 명시적으로 선언해야 합니다.
//get 블록은 속성값을 읽을때 실행 됩니다. 반드시 리턴 키워드를 통해서 다른속성에 있는 값을 리턴하거나 자료형값과 동일한값을 리턴해야 합니다.
//set 블록은 값을 저장할때 실행됩니다.set 블록에서는 ()와 파라미터를 생략할수 있는데 이 경우에는 newValue라는 이름을 가진 기본 파라미터를 사용합니다.


class Person {
   var name: String
   var yearOfBirth: Int

   init(name: String, year: Int) {
      self.name = name
      self.yearOfBirth = year
   }
    //계산 속성을 추가하고 두번째 속성으로 나이를 리턴해보겠습니다
    var age: Int {
        get {
        let calendar = Calendar.current
        let now = Date()
        let year = calendar.component(.year, from: now)
        return year - yearOfBirth
            //현재 날짜에서 년도를 추출한 다음에 속성에 저장된 값을 뺀 결과를 리턴하고 있습니다.
        }
        set {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            yearOfBirth = year - newValue
            //여기에서는 age속성에 전달된 값을 기반으로 출생년도를 계산하고 있습니다. 그런다음 계산된 결과를 yearOfBirth를 통해 저장합니다.여기에서는 set 키워드 다음에 파라미터를 생략했습니다. 이경우에는 newValue 기본 파라미터를 사용합니다. age 속성으로 전달되는 값은 다시 newValue 라는 이름으로 set 블록에 전달됩니다.
        }
        }
}

let P = Person(name: "Jhon", year: 2002)
P.age



P.age = 50
P.yearOfBirth








/*:
 ## Read-only Computed Properties
 ![readonly-1](readonly-1.png)
 ![readonly-2](readonly-2.png)
 */
//읽기 전용 계산 속성


class Person1 {
   var name: String
   var yearOfBirth: Int

   init(name: String, year: Int) {
      self.name = name
      self.yearOfBirth = year
   }


var age1: Int {
    get {
    let calendar = Calendar.current
    let now = Date()
    let year = calendar.component(.year, from: now)
    return year - yearOfBirth
        //현재 날짜에서 년도를 추출한 다음에 속성에 저장된 값을 뺀 결과를 리턴하고 있습니다.
    }
}

}






