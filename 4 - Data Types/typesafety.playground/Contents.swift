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
 # Type Safety
 */
//형식 안전성을 보장하기 위해 자료형을 엄격히 판단함
//형식을 모두 엄격히 판단함,자료형이 다르다면 호환되지 않음
let a = 12
let b = 34.56
//let result = a + b 오류
// 값이 유실되는 경우를 컴파일에서 잡아냄 값이 유실되는 경우를 방지함
let rate = 2.94
let amt = 10_000_000
//계산식에서 두값의 자료형을 일치 시키면 계산 가능
let rasulet = rate * Double(amt)
type(of: rasulet)
//더블로 치환하여 계산
Int(rate * Double(amt))
Int (rate) * amt
//이렇듯 값이 다름 더블로 계산 했을경우 소수점까지 계산식이 처리되 계산 되는 반면 Int로 치환 했을경우 뒤에 소수점이 잘리게 되고 계산의 정확성이 떨어지게됨












