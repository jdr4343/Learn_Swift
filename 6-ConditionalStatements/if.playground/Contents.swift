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
 # if
 ## Syntax
 ![if](if.png)
 */
//condition은 Bool 표현식 If 블록에서 구현한코드는 condition이 트루일경우에만 실행
let id = "root3"
let password = "1234"
if id == "root" {
    print("valid id")
}

if password == "1234" {
    print("valid password")
}

if id == "root" && password == "1234" { // 논리 연산자 사용가능
    print("go to admin page")

}
/*:
 ## Syntax
 ![if-else](if-else.png)
 */
//컨디션이 false일 경우 실행

if id == "root" && password == "1234" { // 논리 연산자 사용가능
    print("go to admin page")
} else {
    print("incorrect value")
}

/*:
 ## Syntax
 ![if-elseif-else](if-elseif-else.png)
 */
// false 일 경우 else if 거기서 또 false 일 경우 else 문법상 무제한사용 순서대로 적용
let num = 10

if num >= 0 {
    print("positive number or zero")
     if num % 2 == 0 {
        print("positive even number")
    } else {
        print("positive odd number")
    }
} else {
    print("negative number")
}



if num > 100 {
    print("positive number")
}else if num > 10 {
    print("positive number over 10")
}else if num > 0 {
    print("positive number over 100")
}

if num > 1000 {
    print("1000 down")
}else if num > 100 {
    print("100 down")
}else if num >= 10 {
    print("10 equl or down")
}else{
    print("10 down")
}







