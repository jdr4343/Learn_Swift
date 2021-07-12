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
 # Nonfrozen Enumeration
 */

enum ServiceType {
   case onlineCourse
   case offlineCamp
    case onlineCamp
}

let selectedType = ServiceType.onlineCourse
//서비스 타입에 맞는 이메일을 전송한다고 가정
switch selectedType {
case .onlineCourse:
   print("send online course email")
case .offlineCamp:
   print("send offline camp email")
//case .onlineCamp:
   //print("send online camp emalil")
@unknown default:
    break
    //컴파일러 입장에서 보면 모든 케이스를 처리 하고 있기 떄문에 별도의 경고나 에러를 출력하지 않습니다.지금은 코드가 짧아서 스위치문에서 새로운 케이스를 출력해야 처리한다는 점이 바로 파악되지만 실제 프로젝트에서는 하나의 열거형을 다양한 파일에서 사용하기 때문에 이런 문제를 쉽게 파악하기 어렵습니다 스위프트는 이런 문제를 해결하기 위해서 @unknown 특성을 추가했습니다.하지만 이전과 달리 처리 되지 않은 케이스가 있다는걸 알려주기 떄문에 컴파일 타임에 논리적인 에러를 미리 발견하고 수정할수 있습니다. unknown 특성은 switch문안에서 default 블록과 함꼐 사용하는 특성입니다 이특성을 추가하면 컴파일러가 파악하고 있는 케이스와는 매칭되지 않아야 합니다.

    //이 코드를 컴파일 할떄 컴파일러가 3개의 열거형 케이스가 선언되어 있다는걸 알수가 있죠 이런 케이스들은 반드시 별도의 케이스 블록으로 처리 해야합니다 그렇지 않고 default블록으로 처리하면 unknow특성이 경고를 표시합니다. 이코드에서는 새롭게 추가한 onlinecamp케이스가 default블록과 매칭되어 있죠 이떄는 경고를 통해서 새로운 케이스가 처리되지 않았다는걸 알려줍니다.


}
