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
 # Overriding
 */
//super Class로 부터 상속한 멤버를 재정의하는 방법에 대해 알아봅시다
//super Class로 부터 상속받은 멤버가 subclass구현에 맞게 재정의 하는걸 Overriding 이라고 합니다.
//Overriding이 가능한 대상은 methods,property.subscripts,initializers입니다.
//Overriding은 두가지 방식으로 구현합니다. superClass 구현을 기반으로 새로운 코드를 추가하거나 superClass 구현을 무시하고 완전히 새롭게 구현하는 것 입니다.


class Figure {
   var name = "Unknown"

   init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
}

//여기에서 drow 메소드를 Overriding 하겠습니다
//Figure class 에서 drow 메소드를 복사한 다음에 Circle class로 옮기겠습니다.
//Overriding 선언은 override 키워드가 필요하니 추가해줍니다.
class Circle: Figure {
   var radius = 0.0
    
    var GoodMorning = "hello"
    
    //읽기 전용 속성 추가
    var diameter: Double {
        return radius * 2
        //4)여기에서 diameter 속성을 읽기전용 계산속성으로 선언했습니다. oval 인스턴스를 통해서 diameter 속성에 값을 저장할수는 있지만 diameter 속성이 변수 저장속성으로 바뀌지 않고 읽기 전용속성인것은 변함이 없습니다.
    }
    
    //Figure에 있는 메소드와 구분하기 위해서 로그를 수정하겠습니다.
    override func draw() {
        super.draw()//이렇게 super 키워드를 추가해주면 Figure에 있는 draw 메소드가 먼저 실행된 다음에 Overriding 한 메소드에 있는 코드를 실행합니다.
        //상위구현을 기반으로 구현 할떄에는 항상 이런 패턴을 사용합니다. 보통은 지금처럼 상위구현을 먼저 호출하지만 subclass에서 구현한 코드를 먼저 실행한다음에 상위구현을 호출하는것도 가능합니다.
       print("🥰")
    }
 }



let c = Circle(name: "Circle")
c.draw()
//이제 다시 실행시켜보면 Overriding 한 draw의 🥰 가 잘출력되어 나옵니다. 방금 구현한 패턴은 상위 구현을 완전히 무시합니다.
//만약 상위구현을 기반으로 새로운 기능을 추가하고 싶다면 어떻게 해야할까요 멤버를 오버라이딩 했다고 해서 슈퍼클래스에 있는 멤버가 완전히 사라지는것은 아닙니다 슈퍼 키워드를 통해서 언제든 사용할수 있습니다.Circle에 있는 draw 메소드로 가서 코드를 추가하겠습니다


//속성을 Overriding 해보곘습니다.
class Oval: Circle {
    //2) 읽기와 쓰기가 모두 가능하도록 Overriding 해보겠습니다.
    override var diameter: Double {
        get{
            return super.diameter
        }
        set {
            super.radius = newValue / 2
            //5)그래서 여기의 코드처럼 다른속성을 바꾸는 방식으로 Overriding 합니다.
            //간단하게 정리를 하면 읽기전용 속성을 읽기와 쓰기가 가능한 속성을 Overriding 하는것은 허용 됩니다. 반대로 읽기와 쓰기가 가능한 속성을 읽기 전용으로 Overriding 하는것은 허용되지 않습니다.
            //이방식에는 주의할점이 하나 있습니다. get 블록과 set 블록을 다시 보면 superExpression으로 super class에 있는 속성에 접근 하고 있습니다. 만약 여기에서 super를 self로 바꾸면 동일한 속성에 반복적으로 접근하다가 코드가 강제로 종료 되어 버립니다.
            //Overriding 구현 한다보면 super 대신 self를 쓰는 실수를 자주하게 됩니다.그리고 이것때문에 발생하는 에러는 디버깅 하기도 어렵습니다.Overriding 한 멤버에서 self에 접근할떄는 제귀호출이 발생하지 않도록 조심해야 합니다.
        }
    }
    //3) 여기에서 set 블록을 보면 super을 사용해서 raaius 속성에 접근하고 있습니다. 반드시 super class에 있는 동일한 속성에 접근해야 하는것은 아닙니다. 이렇게 다른 속성에 접근해도 상관없습니다. 오히려 여기에서 diameter 속성에 값을 저장하면 error가 발생합니다.
    
    
    
    
    //Circle에 있는 radius 속성을 Overriding 하겠습니다.속성은 메소드와 Overriding 방식이 다릅니다. 계산속성을 구현하거나 PropertyObserver를 추가하는 방식을 사용합니다.
    //먼저 계산속성으로 바꿔보겠습니다.
    override var radius: Double {
        get {
            return super.radius
        }
        set {
            super.radius = newValue
            //그렇다면 반대의 경우는 어떨까요? 우선 Circle class 에 읽기전용 속성을 추가하겠습니다. 그후 Oval class 로 와서 1)
        }
       
    }
    
    
    
    
    //PropertyObserver 옵저버를 추가 해보겠습니다
    override var GoodMorning: String {
        willSet{
            print(newValue)
        }
        didSet{
            print(oldValue)
        }
    }
    //Overriding을 금지 해야된다면 final 을 멤버선언을 추가 하면됩니다 . ex ) final var radius = 0.0
    //Overriding이 금지 됬다고 해도 상속 대상이 금지 된건 아니므로 메소드를 호출하는건 가능합니다.
    
}








