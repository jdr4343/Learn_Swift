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
 # Subscripts
 ![subscript](subscript.png)
 */
//서브 스크립트를 직접 구현하는 방법에 대해 알아봅시다.

let list = ["A", "B", "C"]
list[0]//이게 바로 서브스크립트 입니다.\










/*:
 ![subscript-syntax](subscript-syntax.png)
 */
//서브 스크립트를 직접 구현해보겠습니다.
//파라미터수와 형식에는 제한이 없지만 대부분 2개이하의 파라미터를 사용합니다.
//가변파라미터를 사용하는것도 가능합니다.하지만 입출력 파라미터로 선언 하거나 파라미터의 기본값을 지정하는것은 불가능합니다.
//서브스크립트로 값을 받아야하기때문에 파라미터를 생략하는건 불가능합니다.
//리턴은서브스크립트를 통해 리턴되는 값의 형식인 동시에 저장하는 값의 형식입니다.문법에서는 저장하는 값의 자료형을 별도로 선언하지 않습니다.대신 리턴형을 저장하는 값에 선언합니다.
//get블록과 set블록을 모두 구현하면 서브스크립트를 통해 값을 읽고 쓸수있습니다. 서브스크립트로 저장한 값은 파라미터를 통해 set블록으로 전달됩니다. 파라미터 이름을 직접선언 하고 싶다면 set 키워드 뒤에 선언합니다.
//파라미터 이름을 생략한다면 newValue라는 이름을 가진 상수가 자동으로 제공됩니다.
//서브스크립트에서 값을 저장하지 않는다면 set 블럭을 생략합니다. 서브스크립트는 최소한 값을 읽을수있어야 하기때문에 get 블록을 생략하는것은 허용되지 않습니다.

class List {
    var data = [ 1, 2, 3]
    //데이터 속성을 선언한다으메 숫자배열을 전달하겠습니다. 데이터 속성에 저장된 배열을 읽고 쓸수 있도록 서브스크립트를 구현 하겠습니다.
    subscript(I index: Int) -> Int {
        get {
            return data[index]
        }
        set {
            data[index] = newValue
        }
    }
}

//서브스크립트를 사용해 보겠습니다.
var l = List()
l[I: 0]
//새로운 값 저장
l[I: 1] = 123

l[I: 1]

struct Matrix {
    var data = [[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]]//데이터 속성에 이차원 배열을 저장했습니다.이차원배열에는 두개의 index가 필요합니다.
    subscript(row: Int, col: Int) -> Int {
        return data[row][col]
    }
}

let m = Matrix()
m[0, 0]


