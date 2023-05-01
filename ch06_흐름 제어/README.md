# CHPATER6 흐름제어

## 6.1 조건문
- 조건문에서는 if 구문과 switch 구문, guard 구문이 있습니다.

### 6.1.1 if 구문
- if 구문은 대표적인 조건문으로 if,else 등의 키워드를 사용하여 구현할 수 있습니다. 정수, 실수 등 0이 아닌 모든 값을 참으로 취급하여 조건 값이 될 수 있었던 다른 언어와는 달리 스위프트의 if 구문은 조건의 값이 꼭 Bool 타입이어야 합니다.
```swift
let first : Int = 5
let second : Int = 7

if first > second {
  print("first > second")
} else if first < second {
  print("first < second")
} else {
  print("first == second")
}
```

- else if 조건을 충족해 블록 내부의 명령문이 실행되면 그다음에 이어진 else if의 조건을 충족하더라도 실행되지 않고 조건문을 빠져나옵니다.

### 6.1.2 switch 구문
- 스위프트에서 case 내부의 코드를 모두 실행하면 break 없이도 switch 구문이 종료됩니다.
- 스위프트에서 switch 구문의 case를 연속 실행하려면 fallthrough 키워드를 사용합니다.
- where 절을 사용하여 조건을 확장할 수도 있습니다.

```swift

let integerValue: Int = 5

switch integerValue {
case 0:
  print("Value == zero")
case 1...10:
  print("Value == 1~10")
  fallthrough
case Int.min..<0, 101..<Int.max:
  print("Value < 0 or Value > 100")
  break
default:
  print("10 < Value <= 100")
}
```
switch 구문의 입력 값으로 숫자 표현이 아닌 문자, 문자열, 열거형, 튜플, 범위, 패턴이 적용 된 타입 등 다양한 타입의 값도 사용 가능합니다.
```swift
let stringValue : String = "Liam Neeson"

switch stringValue{
case "yagom":
  print("He is yagom")
case "Jay":
  print("He is Jay")
case "Jenny", "Joker", "Nova":
  print("He or She is \(stringValue)")
default:
  print("\(stringValue) said 'I don't know who you are'")
 
 ```
 - case 뒤에는 꼭 실행 가능한 코드가 위치해야 합니다.

- where 키워드를 사용하여 case의 조건을 확장할 수 있습니다.
```swift
let 직급: String = "사원"
let 연차: Int = 1
let 인턴인가: Bool = false

switch 직급 {
case "사원" where 인턴인가 == true:
  print("인턴입니다.")
case "사원" where 연차 < 2 && 인턴인가 == false:
  print("신입사원입니다.")
case "사원" where 연차 > 5:
  print("연식 좀 된 사원입니다.")
case "사원":
  print("사원입니다.")
case "대리":
  print("대리입니다.")
default:
  print("사장입니까?")
}
```

## 6.2 반복문
- 같거나 비슷한 명령을 반복 실행할 때는 반복문 만큼 중요한 것이 없습니다.
### 6.2.1 for-in 구문
```swift
for i in 0...2{
  print(i)
}
//0
//1
//2

for i in 0...5{
  if i.isMultiple(of:2) {
    print(i)
    continue //continue 키워드를 사용하면 바로 다음 시퀀스로 건너뜁니다.
  }
  
  print("\(i) == 홀수")
}
//0
//1 == 홀수
//2 
//3 == 홀수
//4
//5 == 홀수

let friends = [String: Int] = ["Jay":35, "Joe":29, "Jenny":31]

for tuple in friends {
  print(tuple)
}

//("Joe", 29)
//("Jay", 35)
//("Jenny", 31)

let 주소: [String: String] = ["도": "충청북도", "시군구":"청주시 청원구", "동읍면":"율량동"]

for (키,값) in 주소{
  print("\(키): \(값)")
}
```

### 6.2.2 while 구문
```swift
var names: [String] = ["Joker", "Jenny", "Nova", "yagom"]

while names.isEmpty == false{
  print("Good bye \(names.removeFirst())")
}
```
### 6.2.3 repeat-while구문
- repeat-while구문은 다른 프로그래밍 언어의 do-while 구문과 크게 다르지 않습니다.
- repeat 블록의 코드를 최초 1회 실행한 후, while 다음의 조건이 성립하면 블록 내부의 코드를 반복 실행합니다.
```swift
var names: [String] = ["John", "Jenny", "Joe", "yagom"]

repeat{
  print("Good bye \(names.removeFirst())")
}while names.isEmpty == false
```
## 6.3 구문 이름표
- 반복문을 작성하다 보면 종종 반복문을 중첩으로 작성하게 됩니다. 이때 반복문을 제어하는 키워드(break, continue등) 가 어떤 범위에 적용되어야 하는지 애매하거나 큰 범위의 반복문을 종료할 때 사용합니다.




