import UIKit

//유투버(데이터)모델 - struct / 구조체\
//다른 종이에 복사, 복사본 변경해도 원본 변경되지 않는다.
struct YoutuberStruct{
    var name : String
    var subscribersCount : Int
}

var devYoon = YoutuberStruct(name: "윤여송", subscribersCount: 1000)

var devYoonClone = devYoon
print("값 넣기 전 devYoonClone.name : \(devYoonClone.name)")

devYoonClone.name = "이여송"
print("값 넣은 후 devYoonClone.name: \(devYoonClone.name)")
print("값 넣은 후 devYoon.name: \(devYoon.name)")

//클래스
//복사본과 서로연결. 복사본 변경할 시 원본도 변경된다.
class YoutuberClass{
    var name : String
    var subscribersCount: Int
    //생성자 - 즉 메모리에 올린다.
    //init 으로 매개변수를 가진 생성자 메소드를 만들어야
    //매개변수를 넣어서 그값을 가진 객체(object)를 만들 수 있다.
    init(name: String, subscribersCount: Int){
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var YoonDaeRi = YoutuberClass(name: "윤대리",subscribersCount: 1000)
var YoonDaeRiClone = YoonDaeRi

print("값 넣기 전 YoonDaeRiClone.name : \(YoonDaeRiClone.name)")
YoonDaeRiClone.name = "이이이"
print("값 넣은 후 YoonDaeRi.name: \(YoonDaeRi.name)")
print("값 넣은 후 YoonDaeRiClone.name: \(YoonDaeRiClone.name)")
