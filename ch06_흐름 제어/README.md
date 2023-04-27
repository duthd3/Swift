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








