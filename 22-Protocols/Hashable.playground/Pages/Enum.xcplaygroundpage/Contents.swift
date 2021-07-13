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
 # Hashable for Enumerations
 */
//딕셔너리 키 타입과 셋 요소 타입이 구현해야하는 Hashable 프로토콜
//Hashable 프로토콜을 구현하면 값의 유일성을 보장하고 검색속도가 빠름.
//Hashable은 특정조건이 충족되면 컴파일러가 구현을 자동으로 해줌
enum ServiceType {
   case onlineCourse
   case offlineCamp
}//열거형 선언에 연관값이 포함되어 있지않다면 Hashable 자동으로 구현이됨. 그리고 이때에는 Hashable 프로토콜을 선언하는 부분도 생략할수있음

//서비스 타입 열거형을 dictionary 로 선언하겠습니다.
let type: [ServiceType: String]
//보는 것처럼 dictionary 키로 선언할수 있습니다. set에 저장해 보겠습니다.
let typeSet: Set = [ServiceType.onlineCourse]
//Hashable이 자동으로 구현되어 있기때문에 둘다 문제없이 구현이 됬습니다.

//두번째 열거형은 연관값이 선언되어 있습니다.이때는 Hashable 구현이 제공되는 조건이 달라집니다.
enum VideoInterface: Hashable {//Hashable 프로토콜을 채용한다 선언 했더니 그러면 videoInterface 타입이 Hashable 프로토콜을 구현하지 않았다는 에러가 발생합니다. 지금처럼 열거형에 연관값이 선언 되어 있다면 연관값에 포함된 모든 형식이 Hashable 프로토콜을 구현한 경우에만 구현이 자동으로 제공 됩니다.
   case dvi(width: Int, height: Int)
   case hdmi(width: Int, height: Int, version: Double, audioEnabled: Bool)
//   case displayPort(size: CGSize)
    //이 열거에서 처럼 기본타입Int나 Double, width 등 기본타입들은 Hashable 프로토콜을 구현하고 있기 때문에 문제가 없지만 CGsize는 그렇지 않습니다. 그래서 필요한 멤버를 우리가 구현해야 합니다.
}
//조금전과 같이 dicrionary 타입으로 선언해보면 videoInterface 열거형이 Hashable 프로토콜을 구현하지 않고 있다는 에러가 표시됩니다.
let interfaces: [VideoInterface: String]
//그리고 이렇게 Set에 저장하는 코드에서도 error가 발생합니다. 메시지를 보면 Hashable프로토콜을 구현해야 한다고 적혀있습니다.
let interfacesSet: Set = [VideoInterface.dvi(width: 1024, height: 768)]
// 열거형 선언으로가서 Hashable 프로토콜을 채용한다고 선언하겠습니다.
//: [Next](@next)
