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
 # Type Methods
 ![static-func](static-func.png)
 ![class-func](class-func.png)
 ![call](call.png)
 */
//형식과 연관된 메소드를 구현하고 호출하는 방법
//속성을 인스턴스 속성과 타입 속성으로 구분하는것처럼
//메소드도 인스턴스 메소드와 타입메소드로 구분합니다.타입 메소드는 인스턴스가 아닌 형식에 연관된 메소드 입니다.
//class 키워드를 사용할때는 subclass에서 오버라이딩을 허용할때 사용합니다.
//static으로 선언 하면 오버라이딩이 금지됩니다

class Circle {
    //타입 속성
    static let pi = 3.14
    //인스턴스 속성
    var radius = 0.0
    //인스턴스 메소드 추가
    func getArea() -> Double {
        return radius * radius * Circle.pi
        //이렇게 인스턴스 속성은 이름만으로 접근할수 있지만 타입속성을 타입이름으로 접근해야합니다.
    }
    //타입 메소드 추가
    class func printPi() {
        print(pi)
        //타입 메소드에서는 타입 이름없이 타입속성에 바로 접근할수 있습니다. 반면 인스턴스 멤버에 직접 접근하는 방법은 없습니다.
    }
}

//타입 메소드는 타입이름으로 호출
Circle.printPi()

class strokeCircle: Circle {
    override static func printPi() {
        print(pi)
        //static 키워드로 선언한 메소드를 서브 클래스에서 override 할수없습니다.
        //subclass 에서 오버라이딩하는 메소드는 static키워드가 아니라 class 키워드로 선언합니다
    }
}














