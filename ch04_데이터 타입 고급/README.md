# CH4.데이터 타입 고급

## 4.1 데이터 타입 안심
- 스위프트의 특징 중 안전성이 가장 뚜렷하게 나타나는 부분입니다.
- 스위프트는 타입에 굉장히 민감하고 엄격합니다. 서로 다른 타입끼리의 데이터 교환은 꼭 타입캐스팅을 거쳐야 합니다.

### 4.1.1 데이터 타입 안심이란
- 스위프트는 데이터 타입을 안심하고 사용할 수 있는 언어입니다.

### 4.1.2 타입 추론
- 스위프트에서는 변수나 상수를 선언할 때 특정 타입을 명시하지 않아도 컴파일러가 할당된 값을 기준으로 변수나 상수의 타입을 결정합니다.
```swift
var name = "Kwanhee"
name = 100 //정수를 할당하려고 시도하면 오류가 발생합니다.
```

## 4.2 타입 별칭
- 스위프트에서는 기본으로 제공하는 데이터 타입이든, 사용자가 임의로 만든 데이터 타입이든 이미 존재하는 데이터 타입에 임의로 다른 이름(별칭)을 부여할 수 있습니다.
```swift
typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age : MyInt = 100
var year : YourInt = 2080

year = age

let month : Int = 7
let percentage : MyDouble = 99.9
```

## 4.3 튜플
- 튜플은 타입의 이름이 따로 지정되어 있지 않은, 프로그래머 마음대로 만드는 타입입니다.
- '지정된 데이터의 묶음' 이라고 표현할 수 있습니다.
- 튜플은 타입 이름이 따로 없으므로 일정 타입의 나열만으로 튜플 타입을 생성해줄 수 있습니다.

```swift
var person: (String, Int, Double) = ("yagom", 100, 182.5)
//인덱스를 통해서 값을 빼 올 수 있습니다.
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")

person.1 = 99 //인덱스를 통해 값을 할당할 수 있습니다.
person.2 = 178.5
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")
```
- 튜플의 요소마다 이름을 붙여줄 수도 있습니다.
```swift
var person: (name: String, age: Int, height: Double) = ("yagom", 100, 182.5)

print("이름: \(person.name), 나이:\(person.age), 신장:\(person.height)")

person.age  = 99 //요소 이름을 통해 값을 할당할 수 있습니다.
person.2 = 178.5 //인덱스를 통해서도 값을 할당할 수 있습니다.
```
