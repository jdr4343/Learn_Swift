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

struct Contacts {
   var email: [String: String]?
   var address: String?
    
    func printAddress() {
        return print(address ?? "no adress")//adress 속성에 값이 저장되어 있다면 추출해서 프린트 함수로 출력을 하고 값이 없다면 "no adress"를 호출합니다.
    }
}

struct Person {
   var name: String
   var contacts: Contacts?

   init(name: String, email: String) {
      self.name = name
      contacts = Contacts(email: ["home": email], address: "Seoul")
   }
    func getContact() -> Contacts? {
        return contacts
        //이메소드를 통해 adress 코드에 접근 하겠습니다.
    }
}


/*:
 # Optional Chaining
 */
//옵셔널을 연달아서 호출하기.
//옵셔널 체이닝의 결과는 언제나 옵셔널이다.
//옵셔널 체이닝에 포함된 표현식중에 하나라도 nil을 리턴한다면 이어지는 평가식을 평가 하지 않고 무조건 nil을 리턴한다.


var p = Person(name: "james", email: "Swift@naver.com")
let a = p.contacts?.address

var optionalP: Person? = Person(name: "james", email: "Swift@naver.com")
let b = optionalP?.contacts?.address
//contacts 속성에 접근 하려면 반드시 옵셔널 p 인스턴스를 언래핑 해야 합니다. ?사용에서 체이닝 하거나 !사용해서 강제로 추출하는것 둘중 하나를 선택할수 있습니다.

b
optionalP = nil
let c = optionalP?.contacts?.address
c


p.contacts?.address?.count
p.getContact()?.address
//메소드가 옵셔널 타입을 리턴하고 이타입을 통해서 다른 멤버에 접근할떄는 항상 괄호 뒤에 ? 를 붙입니다.

let f: (() -> Contacts?)? = p.getContact  //? 뭔코드야 야발... 평행세계도 아니고 어려워서 넘어 가라고 해서 넘어갔더니 펑션에서 옵셔널 체이닝을 제대로 배웠다면 이해하실수 있을거라고 하고 그래서 다시 배울라니깐 펑션을 제대로 이해했으면 알거라고 하네
f?()?.address//함수가 메소드가 리턴하는 옵셔널 값에 접근할떄는 괄호뒤에 ? 를 붙힌다.

let d = p.getContact()?.printAddress()//옵셔널 Void

//실제로 메소드가 호출되었는지 확인 할수있음
if p.getContact()?.printAddress() != nil{
    //nil이 아닌지 비교
}

if let _ = p.getContact()?.printAddress() {
    //좀더 세련된 코드 printAddress 코드가 호출된 경우에만 바인딩이 성공합니다. 그런데  Void는 리턴 값이 없다는 뜻이니깐 binding할 값이 없으니 _와일드패턴으로 생략을 합니다. 그냥 바인딩 성공여부만 판단한고 바인딩이 성공하면 if블록이 실행 됩니다.
}


let e = p.contacts?.email?["home"]

p.contacts?.email?["home"]?.count
//dictionary가 옵셔널로 선언되어 있고 키를 통해서 값을 얻을떄에는 스퀘어 브라켓 앞에 붙입니다. 반대로 스퀘어 브라켓을 뒤에 붙이는 경우는 서브스크립트가 리턴하는 값을 통해서 속성에 접근할떄나 메소드를 호출할떄 입니다.

//옵셔널 체이닝 속성을 통해서 adress 속성 변경\
p.contacts?.address = "Daegu"
p.contacts?.address

optionalP?.contacts?.address = "Daegu"
optionalP?.contacts?.address

//위의 경우에는 모든 표현식이 nil이 아니고 아래쪽의 코드는 첫번째 표현식이 nil입니다 그래서 contect속성에 접근하지 않고 바로 종료했기 때문에 adress 속성에 접근하지 못했습니다. 그래서 "Deagu" 라는 문자열을 저장한 코드도 실행되지 못했습니다. 결과적으로 아무런 변화가 없습니다. 옵셔널 체이닝을 통해서 값을 저장하는 규칙은 단순합니다. 옵셔널 체이닝을 통해서 최종 속성에 접근했다면 값을 저장하고 최종 속성에 접근하지 못하고 중간에 종료 되었다면 아무런 변화가 없습니다.

// 1. 옵셔널 체이닝의 결과는 언제나 옵셔널 이다
// 2. 옵셔널 체이닝에 포함된 표현식중 하나가 nil을 리턴한다면 전체 표현식을 중단하고 nil을 리턴한다





















