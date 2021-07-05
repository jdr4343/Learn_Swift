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
 # Variables
 
 ## Syntax
 ![Variables Syntax](syntax-var.png)
 */

//변수는 변할수 있는 수 값을 저장하고 변수를 언제든지 저장할수 있습니다
// 변수 선언키워드 var 변수이름 식별자 아이덴티 파이어 (할당연산자= )저장할 값을 지정
var Name = "Swift"
var Year = 2018
var valid = false

var x = 0.0, y = 0.0, z = 0.0
Name//표현식
x
print(Name)


/*:
 ## Syntax
 ![Variables Syntax](syntax-var-new-value.png)
 */
//이미 선언되 있는 변수에 새로운 값을 지정할때는 선언키워드 var 필요하지 않음
//동일한 이름을 가진 변수는 하나만 선언 할수 있음.
Name = "Steve"
Name = "Yoona"

print(Name)
// 항상 마지막에 저장된 값이 선언됨
var anotherName = Name
anotherName = "Tim"
print(Name, anotherName)

Year = 2021
//: [Next](@next)
