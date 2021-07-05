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
 # Ternary Conditional Operator
 ## Syntax
 ![Syntax](syntax.png)
 */
// 삼항 연산자 피 연산자가 3개인 연산자
//주로 어떤 조건을 기준으로 두개의 값중 하나의 값을 선택해야 하는 코드가 있는데 그런 코드에서 삼항 연산자를 사용 합니다
//condition 은 Bool 표현식이고 트루나 팔스가 리턴되야 됨
//condition 에서 트루가 리턴 되었다면 왼쪽에 있는  ecpr1 이 실행되고
//condition 에서 팔스가 리턴 되었다면 오른쪽에 있는 ecpr2가 실행되게 됨

let hour = 16
hour < 12 ? "am" : "pm"
//뭔가 코테에서 자주 쓰일듯

let Myage = 26
Myage <= 26 ? "YES" : "No"

if hour < 12 {
    "am"
}else {
"pm"
}
hour < 11 ? "Good Morning" :  hour < 15 ? "Good Afternoon" : "Good evening"
//이렇게 3개의 결과 값을 참과 거짓을 통해 표현 할수 있지만 코드가 길어질 수록 읽기 힘들어지기 때문에 웬만하면 if 문이나 스위치 문을 사용함
if hour < 11 {
    print("Good Morning")
} else if hour < 15 {
    print("Good Afternoon")
} else {
    print("Good evening")
}
//두 표현식은 토해내는 값이 똑같음




