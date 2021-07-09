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
 # Comparing Arrays
 */
//비교,검색,정렬 구현

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]
//비교 ==,!=는 개별 요소를 비교한 다음에 요소에 저장순서를 비교합니다. 요소를 비교한 결과가 동일하고 저장순서도 같다면 동일한 배열로 판단합니다.
a == b
a != b
//메소드를 사용해서 비교
a.elementsEqual(b)

//대소문자를 무시하고 두배열을 비교하도록 구현해보겠습니다
a.elementsEqual(b) { (Ihs,rhs) -> Bool in
    return Ihs.caseInsensitiveCompare(rhs) == .orderedSame
}

/*:
 # Finding Elements
 */
//검색 구현
let nums = [1, 2, 3, 4, 5, 6, 6, 7, 10, 23, 41]
//배열에 특정요소가 저장되어 있는지 확인할때는 contains를 사용합니다. 이메소드는 파라미터로 전달한 값이 배열에 존재한다면 트루를 리턴합니다.파라미터를 전달하는 메소드와 클로저를 전달하는 메소드가 함꼐 있습니다. 만약 검색조건을 직접 구현하고 싶다면 클로저 메소드를 사용합니다
//파라미터 전달 메소드
nums.contains(1)
nums.contains(8)
//클로저를 사용해 짝수만 검색하는 걸 구현
nums.contains { (n) -> Bool in
    return n % 2 == 0
}
//클로저를 통해 검색조건을 전달하면 가장먼저 트루를 리턴하는 요소를 리턴해줍니다. 검색된 조건이 없다면 nil을 리턴합니다
nums.first { (n) -> Bool in
    return n % 2 == 0
}
//firstIndex 호출 한다음에 동일한 클로저를 전달해보겠습니다.
//2는 두번째 요소로 저장되어 있기떄문에 1이 리턴 되었습니다.
nums.firstIndex { (n) -> Bool in
    return n % 2 == 0
}
//firstIndex로 값을 전달해 보겠습니다.
nums.firstIndex(of: 1)

nums.lastIndex(of: 23)
//이렇게 요소의 위치를 검색해보았습니다



/*:
 # Sorting on Array
 */
//불변 배열 정렬
//sort -> 배열을 직접 정렬,이름이 동사 , sorted -> 정렬된 새로운 배열을 리턴, ed 과거형
//오름차순으로 정렬
nums.sorted()
nums
//내림차순으로 정렬
nums.sorted { (a, b) -> Bool in
    return a > b
}

//두번쨰 방법 오름차순으로 정렬 한후 reverse 메소드로 뒤집어 줍니다.
//reversed 메소드는 새로운 배열을 생성하지는 않습니다.배열에 메모리를 공유 하면서 역순으로 열거할수 있는 형식을 리턴해줍니다.만약 역순으로 정렬된 새로운 배열을 생성하고 싶다면 배열생성자로 전달해줍니다.
nums.sorted().reversed()
//배열생성자
[Int](nums.sorted().reversed())

//가변 배열 정렬
var mutableNums = nums
mutableNums.sort()
//reverse 요소를 역순으로 정렬 sort메소드와 마찬가지로 새로운 배열을 리턴하지는 않음
mutableNums.reverse()

//특정 위치에 있는 요소를 교체 해보겠습니다.
mutableNums
mutableNums.swapAt(5, 10)
//요소 랜덤으로 섞기
mutableNums.shuffle()


















