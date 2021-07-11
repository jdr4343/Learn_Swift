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
 # Comparing Sets
 */

var a: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var b: Set = [1, 3, 5, 7, 9]
var c: Set = [2, 4, 6, 8, 10]
let d: Set = [1, 7, 5, 9, 3]

//Set 비교
a == b
a != b
//순서를 제외한 나머지가 같기 때문에 동일한걸로 판결
b == d

//elementsEqual 이 메소드는 두 컬렉션에 저장 되어있는 요소를 순서대로 비교 합니다.그러나 set은 정렬되지 않은 컬렉션이기 때문에 실행할때마다 값이 달라집니다.
b.elementsEqual(d)
//올바른 결과를 얻고 싶다면 먼저 set을 array로 변환다음에 동일성을 비교 해야 합니다

//부분 집합 확인
a.isSubset(of: a) //a는 자신의 부분집합이기 떄문에 isSubset은 true를 리턴합니다
a.isStrictSubset(of: a)//그러나 a는 a의 진부분 집합이 아니기 때문에 isSuperset 은 false를 리턴합니다.

//b에 저장되어있는 값은 a에 모두 포함 되고 두 집합은 같은 집합이 아닙니다. 그래서 b는 a의 부분집합인 동시에 진부분집합이기 때문에 두 메소드 모두 true를 리턴합니다.
b.isSubset(of: a)
b.isStrictSubset(of: a)

//상위 집합인지 확인
//집합은 자기 자신은 상위 집합이기 때문에 isSuperset서는 트루를 리턴합니다. 하지만 자기자신은 진 상위 집합은 아니기 때문에 isStrictSubset 메소드에서는 false를 리턴합니다.
a.isSuperset(of: a)
a.isStrictSubset(of: a)
//b는 a의 부분집합이고 a는 b의 상위집합인 동시에 진 상위집합이기 때문에 두 메소드 모두 true를 리턴합니다
a.isSuperset(of: b)
a.isStrictSubset(of: b)
//c에는 a에는 없는 10을 가지고 있기때문에 상위집합,진상위집합이 아닙니다. 두 메소드 모두 false를 리턴합니다.
a.isSuperset(of: c)
a.isStrictSubset(of: c)

//교집합 확인
//isDisjoint 메소드는 두집합이 교집합이면 false를 리턴하고 서로수 집합이면 true를 리턴하여 줍니다. 지금은 a와 b에 공동된 값이 저장되어 있기때문에 false가 리턴됩니다.다시 말해서 교집합이 있다는 뜻입니다
a.isDisjoint(with: b)
a.isDisjoint(with: c)
b.isDisjoint(with: c)//둘이 같은 교집합이 하나도 없는 서로수 집합이기 때문에 트루가 리턴이 되었습니다.
/*:
 # Combining Sets
 */
//집합 연산
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

//합집합,sorted는 그저 확인하기 편하기위해 적어두었습니다.

//union 메소드는 기존 셋은 변경하지 않고 새로운 set을 리턴합니다
var result = b.union(c).sorted()
result = b.union(a).sorted()
//이번에는 원본을 직접 변경하는 메소드를 사용해보겠습니다.form으로 시작하는 메소드는 원본을 변경합니다. 그래서 이 메소드를 사용할때는 set을 가변으로 만들어야 합니다.
b.formUnion(c)

//초기화
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

//교집합
//intersection 메소드는 두집합의 교집합을 새로운 set으로 리턴해줍니다.
 a.intersection(b).sorted()
 c.intersection(b)
//아까전과 마찬가지로 원본을 직접 변경하는 메서드 form을 써보겠습니다
a.formIntersection(b)

//초기화
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

//여집합
//symmetricDifference 메소드는 두집합의 여집합을 새로운 set으로 리턴해줍니다.두 집합의 교집합을 제외한 나머지 수가 리턴됩니다
a.symmetricDifference(b)
//원본은 다 똑같습니다.
a.formSymmetricDifference(b)


a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

//차집합
//subtracting 메소드는 두집합의 차집합을 새로운 셋으로 리턴해줍니다.
a.subtracting(b)
//원본을 직접 변경하고 싶다면 subtract 메소드를 사용합니다
a.subtract(b)
a
