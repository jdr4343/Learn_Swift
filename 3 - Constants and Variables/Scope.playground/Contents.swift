//
//  Copyright (c) KxCoding <kky0317@gmail.com>
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

/*:
 # Scope
 */

// #1 GloverScope 어떤 브레이스{}에도 포합되있지 않음
//동일한 범위에 있는 변수와 상수에 접근할수 있다. 동일한 범위에서는 이전에 선언되있는 변수에 접근 할수 있다.
//
let g1 = 123
// 상위 스코프에선 하위스코프에 선언되 있는 상수와 변수에 접근 할수 없다
//print(g2)    아래 선언한다고 해서 실행되지 않음
func doSomething() {
   // #3 LocalScope  브레이스에 포함됨
    //로컬 스코프에서는 상위 스코프나 글로벌 스코프에 선언된 상수나 변수에 접근할수 있다
    let local1 = 123
    print(g1)
    print(g2)
   if true {
      // #4
    print(local1)
  //  print(local2) 컴파일 오류 로컬2를 선언하기전에 접근했기 때문
    
   }//브레이스는 코드의 범위를 설정할뿐만 아니라 라이프사이클또한 지정함
   
   // #5
    let local2 = 3123
    
}


// #2
let g2 = 12313
struct Scope {
   // #6
   // print(g1)
   // print(g2)
   //Declaration Scope 선언범위 여기에선 표현식이나 문장을 직접 작성 할수 없음 속성과 메소드 같은 멤버 선언이 와야됨
   func doSomething() {
    print(g1)
    print(g2)
      // #7
   }
}

doSomething()
