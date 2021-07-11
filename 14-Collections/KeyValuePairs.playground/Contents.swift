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
 # KeyValuePairs
 ## KeyValuePair Literal
  ![kvpliteral](kvp-literal.png)
 ## KeyValuePair Type
 ![kvptype](kvp-type.png)
  */
//경량 컬렉션 KeyValuePairs
//KeyValuePairs는 Dictionary 처럼 key와 value를 저장하는 하나의 컬렉션 입니다. 코드의 형태도 dictionary와 유사합니다.그리고 여기에 더해서 Array와 유사한 특징도 가지고 있습니다.

//KeyValuePairs Literal
//dictionaty 와 KeyValuePair의 차이점은 dictionaty타입은 해쉬블 프로토콜을 채용한 타입만 사용해서 키를 빠르게 검색 할수있지만 동일한 키를 한번만 저장할수있습니다.그리고 정렬되어 있지 않은 컬렉션입니다
//반면 KeyValuePairs는 키형식에 제약이 없습니다. 동일한 키를 두번이상 저장하는것도 가능하고 저장순서를 유지한다는 특징이 있습니다. dictionary에 비해 상대적으로 느리지만 대량의 데이터를 처리하는 경우가 아니라면 큰차이를 느끼기엔 어렵습니다.
let words: KeyValuePairs<String, String> = ["A": "Apple", "B": "Banana", "C": "City"]
let foods: KeyValuePairs = ["M": "meet", "N": "Noodle"]//생략문

/*:
  ## KeyValuePair Basics
*/
//다른 컬렉션 처럼 count,isEmpty를 지원합니다.
words.count
words.isEmpty
//그리고 요소를 검색할떄는 contains where 메소드를 사용하고 특정요소를 검색해야한다면 first where을 사용할수있고 index를 검색하고 싶다면 firstindex를 사용합니다.

//특정요소에 접근 할떄에는 key를 통해 접근하는 dictionary와 다르게 Array 처럼 index로 접근합니다.KeyValuePairs는 요소를 순서대로 저장하기 떄문입니다.
words[0]
//키나 값에 따로 접근
words[0].key
words[0].value
//for in문을 사용해서 순서대로 열거하기
for somewords in words {
    print(somewords)
}
//KeyValuePair는 dictionary나 Array에서 제공되는 기능에 비해 상대적으로 적습니다. 예를 들어 새로운 요소를 추가하는 append 메소드나 insert 메소드는 제공되지 않습니다. 그리고 요소를 업데이트 하거나 삭제하는 메소드 역시 제공되지 않습니다. 검색을 제외한 나머지 멤버가 빈약하기 떄문에 파라미터로 전달하거나 리턴값 같은 임시데이터를 전달하는 용도외에는 자주 활용하지 않습니다.

//KeyValuePair는 데이터를 키와 값을 쌍으로 저장해야 하고 동일한 키를 여러번 저장해야하고 저장된 순서가 중요하거나 동일한 순서로 반복해서 처리 해야한다면 dictionary대신 KeyValuePair를 사용합니다.
