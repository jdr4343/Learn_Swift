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
 # Protocol Extension
 */
//Extension 은 형식을 확장합니다.
//프로토콜역시 형식이기 떄문에 Extension으로 확장할수 있습니다.
//Extension으로 프로토콜을 확장하면 프로토콜을 채용한 모든 형식에 기본구현을 제공 할수있습니다 프로토콜에는 선언만 포함된다고 공부했는데 Extension으로 구현을 추가 한다는것이 어색 할수있습니다.
//문법적으로는 프로토콜에 구현을 추가하지만 실제로는 프로토콜을 채용한 형식의 구현이 추가됩니다. 코드 중복을 줄이면서 프로토콜 요구사항을 충족 시킬수있다는 장점이 있습니다.

//Figure 프로토콜이 선언되어 있습니다 이프로토콜을 Extension으로 확장하고 draw 메소드를 추가하겠습니다.
protocol Figure {
    var name: String { get }
    func draw()
}

extension Figure {
    func draw() {
        print("draw figure")
    }
}

struct Rectangle: Figure {
    var name = " "
    //지금은 속성만 선언 했고 드로우 메소드는 구현하지 않았습니다. 원래는 요구사항을 충족할수 없지만 여기에서 프로토콜에 드로우 메소드 기본구현을 추가했습니다. 그래서 이메소드가 랙탱글 구조체에 자동으로 추가되고 요구사항을 충족 시킵니다.
    func draw() {
            print("draw ractangle")
        //프로토콜 익스텐션으로 추가되는 메소드와 동일합니다. 하지만 이경우에 중복오류는 발생하지 않습니다. 대신 프로토콜 익스텐션으로 추가되는 멤버는 무시됩니다.다시 말해서 형식에서 직접구현한 멤버가 프로토콜익스테션으로 추가된 멤버보다 높은 우선권을 가집니다
    }
        }
    


let r = Rectangle()
r.draw()




//프로토콜 익스텐션은 프로토콜을 채용한 모든 형식에 멤버를 추가합니다 이번에는 멤버를 추가할 형식을 제한해보겠습니다
protocol Figure1 where Self: Equatable {//Self는 프로토콜을 채용한 형식을 나타냅니다.형식이 Equatable 프로토콜을 채용하고 있다면 where 절이 트루로 평가됩니다. 앞으로 프로토콜 익스텐션에서 구현한 멤버는 figure 프로토콜을 채용하면서 Equatable을 채용하고 있는 형식에 제한적으로 추가됩니다.
    var name: String { get }
    func draw()
}

extension Figure1 {
    func draw() {
        print("draw figure")
    }
}


struct Rectangle1: Figure1, Equatable {
    var name = " "
    
    //draw 메소드를 삭제해보면 에러가 발생합니다. 메시지를 보면 랙탱글1 구조체가 피규어1 프로토콜의 요구사항을 충족시키지 못한다고 나와 있습니다. 랙탱글1이 Equatable 프로토콜을 채용하고 있지 않기 때문에 프로토콜익스텐션에서 구현한 멤버는 추가되지 않습니다.Equatable을 추가하면 그러면 프로토콜익스텐션에서 where절로 추가한 요구사항을 충족합니다. 그래서 다시 draw 메소드가 추가되고 Figure 프로토콜의 요구사항을 충족시킵니다.
    }
        
let A = Rectangle1()
A.draw()
