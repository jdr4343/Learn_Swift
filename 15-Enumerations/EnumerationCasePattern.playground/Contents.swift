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
 # Enumeration Case Pattern
 ![enum-case](enum-case.png)
 */

// EnumerationCase Pattern 이 패턴은 연관 값을 가진 열거형 케이스를 매칭시킬때 사용합니다.스위치문,이프문,가드문,포인문,와일문에서 사용합니다.
//이 패턴을 사용하는 시점에는 대부분 열거형의 형식을 추론할수 있기때문에 열거형 이름을 생략한 형태를 많이 사용합니다.그리고 Valuebinding과 마찬가지로 while절을 추가해서 부가적인 조건을 지정하는것도 가능합니다.

//교통수단을 나타내는 열거형을 선언하겠습니다.
enum Transportation {
    case bus(number: Int)//버스에는 노선 번호를 연관 케이스로 저장하겠습니다.
    case taxi(company: String, number: String)//택시에는 회사와 차량번호를 저장하겠습니다.
    case subway(lineNumber: Int, express:Bool)//노선번호와 급행플래그를 전달하겠습니다.
}
//먼저 버스케이스를 만들고 변수에 저장하겠습니다.
var tpt = Transportation.bus(number: 7)
//switch문에서 Enumeration Case Pattern으로 매칭 시켜보겠습니다.
switch tpt {
case .bus(let n)://버스를 매칭시고 연관값은 n상수에 바인딩 합니다.
print(n)
case .taxi(let c, var n)://택시를 매칭시키고 연관값은 c와 n을 바인딩 합니다. 하나만 바인딩 하고 싶다면 와일드카드 패턴으로 생략해야 에러가 발생하지 않습니다.
print(c, n)
case let .subway(l, e)://서브웨이 케이스를 매칭시키고 연관값에 저장된 모든 값을 상수에 바인딩 합니다. 모든 연관값을 동일한 방식으로 바인딩한다면 두번쨰 방식보다 세번째 방식이 효율적입니다.
print(l, e)
}

//서브웨이 케이스를 변수에 저장하겠습니다.
tpt = Transportation.subway(lineNumber: 2, express: false)
//if문에서 EnumerationCase를 사용해보겠습니다. 값을 바인딩하지 않는다면 let,var키워드를 생략할수 있습니다.
//if case (let,var생략가능) (pattern) = (매칭시킬 값 저장)

if case let .subway(2, express) = tpt {//이 if 블록은 subway 케이스 중에서 첫번쨰 연관값으로 2가 저장되어 있을떄 실행되고 바인딩한 상수는 if블록 내부에서 사용됩니다.
    //이코드는 2호선 지하철인지 확인하고 급행여부에 따라서 코드를 분개하는 코드입니다.
    if express {
        
    } else {
        
    }
    
}
//이번에는 lineNumber에 관계없이 급행여부만 확인하는 코드를 만들어 보겠습니다.
if case .subway(_, true) = tpt {// 첫번쨰 연관값은 와일드카드 패턴으로 무시합니다. 그런 다음 두번째 연관값을 트루에 매칭합니다.지금은 값을 바인딩 하지 않아서 case키워드 다음에 let이나 var키워드를 생략합니다.
    print("express")
}

//새로운 배열을 만들고 열거형을 저장하겠습니다.
let list = [
    Transportation.subway(lineNumber: 2, express: false),
    Transportation.bus(number: 4412),
    Transportation.subway(lineNumber: 7, express: true),
    Transportation.taxi(company: "SeoulTaxi", number: "1234")
]

//이번에는 for in문을 사용해서 subway 케이스만 열거해 보겠습니다.

for case let .subway(n, _) in list {
    print("subway \(n)")

}
//코드를 실행하고 결과를 보면 for in문은 컬렉션 전체를 열거하는데 EnumerationCase를 사용하면 패턴과 일치하는 요소만 사용합니다. 리스트 배열에는 4개의 요소가 저장되어 있지만 패턴과 일치하는 subway 케이스만 열거합니다.
//만약 급행지하철만 열거하고싶다면
for case let .subway(n, true) in list {
    print("subway \(n)")
}
//부가적인 요소를 추가하고 싶다면 where 절을 추가합니다.whare 절은 패턴 바로 뒤에서 작성하지 않습니다. 위치를 자주 혼동하게 되는데 이렇게 컬렉션 뒤에서 작성합니다. 
for case let .subway(n, true) in list where n == 2 {
    print("subway \(n)")
}













































