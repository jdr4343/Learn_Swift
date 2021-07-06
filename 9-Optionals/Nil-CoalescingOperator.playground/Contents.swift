import UIKit

/*:
 # Nil-Coalescing Operator
 */
var msg = " "
var input: String? = nil

if let inputName = input {// 옵셔널 바인딩 input? 을 inputName에 저장해 바인딩 하였음
 
    msg = "Hello" + inputName
} else {
    msg = "Hello, Stranger"
}
print(msg)

// 조금더 단순하게 구현

var str = "Hello, " + (input != nil ? input! : "Stranger") // 삼항 연산자를 이용해 input에 선언되어 있는 값이 nil이 아니다면 true를 호출해 input을 강제 바인딩 하고있음








/*:
 ## Syntax
 ````
 a ?? b
 OptionalExpression ?? Expression
 ````
*/
// 이항 연산자 왼쪽에 있는 피연산자는 항상 옵셔널 피연산자입니다 오른쪽에오는 피연산자는 non옵셔널 표현식입니다.
//b의 형식은 a의 형식과 옵셔널을 제외하고 동일한 형식이여야 합니다. 만약에 a가 옵셔널 String이다 그러면 b는 String이 되어야 하는것입니다.
//Nil-Coalescing 오퍼레이터를 사용해서
str = "Hello, " + (input ?? "Stranger")
print(str)
//결과는 이전과 동일하지만 코드는 훨씬 단순해졌습니다.
//먼저 왼쪽에 있는 피연산자의 값이 저장되어 있는지 확인합니다. 값을 리턴한다면 이 값을 언래핑 한다음에 연산의 결과로 리턴 합니다. 지금은 인풋이라는 변수에 값이 저장되어 있습니다. ("Swift"라는 문자열)그래서 헬로 라는 문자열뒤에 "Swift"가 연결이 됩니다. 반대로 값이 저장되어 있지 않다면 옵셔널 표현식이 값을 리턴하지 않는다면 오른쪽 피연산자를 평가합니다. 그리고 그결과를 리턴합니다. 여기에서는 값을 추춣하지 않습니다. 그냥 평가한 결과를 그대로 리턴합니다. 두번쨰 피연산자는 주로 값이 없을떄 사용할 기본값을 전달합니다.(삼항연산자랑 비슷한거 같다옳!)






















