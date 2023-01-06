import UIKit

//함수, 메소드 정의
func myFunction(name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}
//함수, 메소드 호출 call
myFunction(name: "윤여송")

func myFunctionSecond(with name: String) -> String{
    return "안녕하세요?!\(name) 입니다!"
}

myFunctionSecond(with: "호롤롤로")

func myFunctionThird(_ name: String)-> String{
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionThird("하하하")

