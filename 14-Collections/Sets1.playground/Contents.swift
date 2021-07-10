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
import Foundation

/*:
 # Set
 ## Set Type
 ![set-type](set-type.png)
 */
//집합을 구현한 set 주로 정렬 순서 보다 검색속도가 중요한 경우에 배열되신 사용됨.
//set은 array처럼 하나의 데이터를 하나의 요소로 저장합니다.
//array와 달리 정렬 되지 않습니다.또한 index도 사용하지 않습니다.
//set은 다른 컬렉션과 마찬가지로 동일한 형식의 요소를 저장합니다.
//set은 동일한 값을 하나만 저장합니다. 이미 존재하는 값을 다시 추가하면 추가되지 않고 무시 됩니다.
//set이 array보다 검색속도가 빠른 이유는 Hashing 알고리즘을 사용하기 때문입니다. Hashing은 특정 값을 고정된 길이의 값으로 변환하는 기법으로 인덱싱과 암호화에서 자주 사용됩니다.
//Hashing은 요소의 유일성을 판단하고 빠른 검색을 위해서 사용하는 값 입니다.


//set을 만들떄는 형식추론을 사용할수 없습니다.
//set은 배열과 달리 중복된값을 허용하지 않음,중복된 값을 여러번 저장할 지라도 하나만 저장이 됨
//set을 선언할때는 자료형을 생략할수는 없지만 요소의 자료형을 생략하는건 가능합니다. let set: Set = [1, 2, 2, 3, 4, 4, 5, 6]
let set: Set<Int> = [1, 2, 2, 3, 4, 4, 5, 6]
set.count

/*:
 ## Inspecting a Set
 */
//set의 저장된 요소를 확인하는 속성은 다른 컬렉션과 동일함
set.count
set.isEmpty

/*:
 ## Testing for Membership
 */
//set을 사용할때 가장 빈번하게 하는 작업은 요소가 포함되어 있는지 확인할때 입니다.
//요소가 포함되었는지 확인할때는 contains 메소드를 사용합니다.파라미터를 통해 전달한 값이 존재 한다면 트루를 리턴합니다.
set.contains(1)

/*:
 ## Adding and Removing Elements
 */
var words = Set<String>()
//새로운 요소를 추가 insert는 요소를 추가한 다음에 결과를 튜플로 리턴해줍니다.
words.insert("Swift")
var insertResult = words.insert("Apple")
insertResult.inserted
insertResult.memberAfterInsert

//set은 중복된 요소를 허용하지 않기떄문에 이번에는 요소가 추가되지 않습니다.
insertResult = words.insert("Apple")
insertResult.inserted
insertResult.memberAfterInsert

//update 메소드는 upsult 방식으로 동작합니다. 파라미터로 전달한 문자열이 존재하지 않는다면 새로운 요소로 저장하고 존재한다면 기존 요소를 교체합니다. 그리고 작업의 결과를 리턴해줍니다.
var updateResult = words.update(with: "Swift")
updateResult
//현재는 "Swift"라는 문자열이 저장되어 있기 때문에 아무런 변화가 없습니다.
updateResult = words.update(with: "Melon")
updateResult
//이번에는 새로운 요소호 추가되었습니다. 그리고 리턴되는 값을 보면 nil이 리턴되었습니다. nil이 리턴된다면 insert이고 문자열이 리턴된다면 업데이트입니다.

//hashValue 속성을 통해서 해쉬값을 확인합니다. 그리고 set은 여기에 출력된 이값을 통해서 문자열을 서로 비교합니다.
var value = "Swift"
value.hashValue
// 조금전과 같이 업데이트를 호출하고 밸류 변수를 파라미터로 전달하겠습니다.
//value에 저장된 Swift는 이미 set에 저장되어 있기때문에 밸류 변수를 전달하면 이미 존재하는 문자열을 새로운 문자열로 교체한 다음에 교체한 문자열을 리턴해줍니다.
updateResult = words.update(with: value)
updateResult
//지금은 두문자열이 같아서 차이점을 확인하기 어렵습니다. 밸류 변수에 새로운 문자열을 저장한다음에 해시값을 확인해보겠습니다.
value = "Hello"
value.hashValue
updateResult = words.update(with: value)
updateResult
//update 메소드를 다시 호출하면 동일한 변수를 파라미터로 전달하고 있지만 해쉬값이 다르기떄문에 서로 다른값으로 판단합니다.그래서 밸류 변수에 저장된 문자열을 새로운 요소로 insert 합니다.

//해쉬값이 고정되어있는 구조체를 만들어 보겠습니다.해쉬값이 고정되어 있을떄 어떤차이가 있는지 보시길 바랍니다.
struct SampleData: Hashable {
    //이렇게 해쉬값을 123으로 고정하겠습니다.
    var hashValue: Int = 123
    var data: String
    
    
//구조체에 저장된 실제 데이터는 데이터 속성에 저장되는데 구조체에 동일성을 비교할떄 데이터를 비교하는게 아니라 해쉬값을 비교하도록 구현 했습니다.
    init(_ data: String) {
        self.data = data
    }
    static func ==(lhs: SampleData, rhs: SampleData) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
}
//그리고 비어있는 set을 하나 만들겠습니다.
var sampleset = Set<SampleData>()
//우선 새로운 인스턴스를 생성한 다음에 해쉬값을 확인해보겠습니다.
var data = SampleData("Swift")
data.hashValue
//해쉬값은 조금전 고정했던 값으로 출력됩니다.

//인스턴스를 새로운 요소로 추가하겠습니다.
//코드를 실행해보면 새로운 요소로 추가 됩니다. inserted 멤버에는 true가 저장되어 있고 memberAfterInsert에는 인스턴스가 저장되어 있습니다. 그리고 마지막 코드가 출력한 값을 보면 123과 "Swift"가 저장되어 있습니다.
var r = sampleset.insert(data)
r.inserted
r.memberAfterInsert
sampleset

//data에 저장되어 있는 값을 "Hello"로 바꾸고 hash값을 출력해보면 data 속성은 변경되었지만 여전히 해쉬값은 123으로 출력됩니다.
data.data = "Hello"
data.hashValue
//이상태에서 다시 요소를 추가 해보겠습니다.코드를 실행해보면 이미 존재하는 요소이기 때문에 추가되지 않았습니다. 그리고 현재 저장되어 있는 요소를 보면 해쉬값은 123이고 data속성은 여전히 swift입니다.
r = sampleset.insert(data)
r.inserted
r.memberAfterInsert
sampleset
//data 속성을 "Hello"로 바꿨기 때문에 데이터 속성에 "Hello"가 저장되어 있는 데이터가 최신 데이터 입니다. 최신 데이터를 set에 반영할 방법이 필요합니다.
//이떄 사용하는 메소드가 update입니다.업데이트로 데이터를 전달한 후 실행해보면 새로운 요소는 추가 되지 않았습니다. 여전히 set에는 하나의 요소가 저장되어 있는데 요소에 저장되어 있는 데이터 속성을 보면 swift에서 헬로로 업데이트 되었습니다.업데이트 된 메소드는 인스턴스가 업데이트 되었을때 set에 저장되어 있는 동일한 요소에 관여하기 위해 사용됩니다.
sampleset.update(with: data)
sampleset

//하나의 요소를 삭제하는 메소드,해당 요소를 삭제한 다음에 해당요소를 리턴해줍니다.
words.remove("Swift")
words
//전체 요소 삭제
words.removeAll()
|




