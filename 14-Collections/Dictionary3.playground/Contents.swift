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
 # Comparing Dictionaries
 */
//dictionary를 비교하는 방법과 요소를 검색하는 방법
let a = ["A": "Apple", "B": "Banana", "C": "City"]
let b = ["A": "Apple", "C": "City", "B": "banana"]

a != b
//dictionary는 원래 뒤죽박죽 섞여있는 컬렉션이기 때문에 저장되어 있는 순서는 신경쓰지 않고 저장되어 있는 키와 값이 동일하다면 같은 dictionary로 판단합니다.

//대소문자가 다르다면 다른 dictionary로 판단됩니다. 만약 대소문자를 구분하고 싶지 않다면 elementsEqual 메소드를 사용하면 됩니다.그러나 elsementsEqual의 경우 순서도 함께 판단하기 때문에 key와 value를 순서대로 정렬 해줘야합니다.
//키를 오름차순으로 정렬
let akeys = a.keys.sorted()
let bkeys = a.keys.sorted()

akeys.elementsEqual(bkeys) { (lhs, rhs) -> Bool in
    //키가 오름차순으로 정렬이 되있습니다. 그리고 이키들은 클로저 파라미터로 순서대로 전달됩니다 만약 전달된 키가 다르다면 두배열에 서로 다른 키가 저장되어 있는 것이죠.
    //일단 키를 먼저 비교한다음에 키가 다르다면 false를 리턴합니다.
    guard lhs.caseInsensitiveCompare(rhs) == .orderedSame else {
        return false
    }
    //위 코드에서 두키가 같다면 값을 비교해야 합니다. 키를 통해서 dictionary에 저장되어 있는 값을 가져온다음에 두값을 비교해 보고 값이 다르다면 false를 리턴하겠습니다.
    guard let Iv = a[lhs], let rv = b[rhs],
          Iv.caseInsensitiveCompare(rv) == .orderedSame
    else {
        return false
    }
    return true
}



/*:
 # Finding Elements
 */
//검색 구현
let words = ["A": "Apple", "B": "Banana", "C": "City"]
//딕셔너리는 여러가지 검색 메소드를 제공하는데 여기에서는 자주 사용하는 3가지 메소드를 사용해보겠습니다. 그리고 딕셔너리 검색에서는 클로저가 필요합니다.검색메소드로 전달하는 클로저의 형식은 대부분ㅇ 동일한데 키와 값이 저장되어 있는 튜플을 파라미터로 받고 트루 또는 팔스를 리턴합니다.

//우선 검색에서 사용하는 클로저를 별도의 상수로 지정하겠습니다.
//이렇게 키와 값이 저장된 튜플을 파라미터로 받고 Bool을 리턴해줍니다.
let c: ((String, String)) -> Bool = {
    $0.0 == "B" || $0.1.contains("i")
}//검색 조건은 이렇게 구현 하겠습니다. 키에 대문자 B가 포함되어 있거나 값에 i가 포함되어 있으면 트루를 리턴하겠습니다.

//contains where파라미터를 보면 클로저 입니다. 키와 값이 저장된 튜플을 파라미터로 받고 bool을 리턴합니다. 이메소드는 파라미터로 전달한 클로저로 요소를 검색합니다. 클로저에서 트루를 리턴한 요소가 하나라도 존재한다면 트루를 리턴해줍니다 주로 조건과 일치하는 요소가 존재하는 확인할때 사용합니다. 파라미터 c를 전달하고 실행해 보겠습니다.
words.contains(where: c)
//클로저에서 구현한 조건과 일치하는 조건이 있기때문에 이렇게 트루가 리턴됩니다.

//first where 메소드는 contains 메소드와 마찬가지로 클로저를 파라미터로 받습니다. 클로저를 활요해서 요소를 검색한다음에 검색된 첫번째 요소를 리턴해주는데 리턴형이 중요합니다.옵셔널 튜플입니다. 검색된 첫번째 요소에 키와 값을 튜플로 담아서 리턴해 줍니다. 리턴형이 옵셔널 튜플이기때문에 만약 검색된 요소가 없다면 nil을 리턴합니다. 마찬가지로 c를 전달하고 실행해 보겠습니다.
let r = words.first(where: c)
r?.key
r?.value
//튜플로 리턴해주기 때문에 리턴된값을 별도의 상수에 저장한 다음에 이렇게 키와 값에 접근 할수 있습니다.

//실행할때마다 결과가 달라집니다.dictionary는 정렬되지 않은 컬렉션이기 떄문입니다. 그래서 리터럴에서는 abc 순서대로 작성을 했지만 실제 저장되는 순서는 달라질수 있다는 이야기입니다. 그리고 first where 메소드는 검색된 첫번쨰 요소를 리턴해줍니다. 실행할떄마다 전달되는 요소가 달라지기 떄문에 first where 메소드가 리턴하는 결과도 얼마든지 달라질수 있습니다.


//filter 메소드는 다른 메소드와 마찬가지로 파라미터로 전달된 클로저를 활용해서 요소를 관찰합니다. 그런 다음 클로저에서 트루를 리턴하는 요소만 따로 모아서 새로운 딕셔너리를 리턴해줍니다.
words.filter(c)
//이번에는 조건을 만족시키는 모든 요소가 새로운 딕셔너리로 리턴되었습니다.













