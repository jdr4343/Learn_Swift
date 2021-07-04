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
 # Strings
 */
// " " = 문자열 숫자나 상관없이 큰따움표로 감싸진다면 문자열이다.
"What a Nice Day"
"what id this? it is very beutiful"
"1234"
"#$&^**&()"
//캐릭터는 하나의 문자열이나 유니코드를 사용하는 문자열이기 떄문에 하나의 문자를  저장하고 싶다면 캐릭터를 지정해줘야 한다. 지정 하지 않는다면 무조건적으로 스트링 타입으로 치환된다.
var jj: Character = "가"
type(of: jj)

/*:
 # Character
 */
//let doubleCaracter: Character = "가나" 캐릭터는 두개의 문자열을 표현하지 못하므로 에러를 토해낸다 캐릭터는 하나의 유니코드나 글자를 표현하는데 쓰튼 문자열 타입이다



