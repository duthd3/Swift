# 데이터 타입 기본
<hr>

스위프트의 모든 데이터 타입 이름은 첫 글자가 대문자로 시작하는 대문자 카멜케이스르 사용합니다.

---------------git Test--------------

## 3.1 Int와 UInt
정수 타입입니다. Int는 +,- 부호르 포함한 정수르 뜻하며 이 주 - 부호르 포함하지 않는 0을 포함한 양의 정수는 UInt로 표현합니다.

## 3.2 Bool
Bool은 불리언 타입입니다. 불리언 타입은 참(true) 또는 거짓(false)만 값으로 가집니다. 
## 3.3 Float와 Double
Float와 Double은 부동소수점을 사용하는 실수며 부동소수 타입이라고 합니다. 흔히 우리가 말하는 소수점 자리가 있는 수입니다. 64비트 환경에서 Double은 최소 15자리의 십진수를 표현할 수 있는 반면에 Float은 6자리의 숫자까지만 표현이 가능합니다.
## 3.4 Character
Character는 말 그대로 '문자'를 의미합니다. 단 하나의 문자를 의미합니다.
## 3.5 String

String은 문자의 나열, 즉 문자열 입니다. 
```swift
let name: String = "yagom" //상수로 선언된 문자열은 변경이 불가능합니다.

//이니셜라이저를 사용하여 빈 문자열을 생성할 수 있습니다.
//var 키워드를 사용하여 변수를 생성했으므로 문자열의 수정 및 변경이 가능합니다.
var introduce: String = String()

//append() 메서드를 사용하여 문자열을 이어붙일 수 있습니다.
introduce.append("제 이름은")

//+연산자를 통해서도 문자열을 이어붙일 수 있습니다.
introduce = introduce + " " + name + "입니다."
print(introduce)

//name에 해당하는 문자의 수를 셀 수 있습니다.
print("name의 글자 수: \(name.count)")
//빈 문자열인지 확인해볼 수 있습니다.
print("introduce가 비어있습니까? \(introduce.isEmpty)")


//연산자를 통한 문자열 결합
let hello: String = "Hello"
let yagom: String = "yagom"
var greeting: String = hello + " " + yagom + "!"
print(greeting) //Helo yagom!

greeting = hello
greeting += " "
greeting += yagom
greeting += "!"
print(greeting) // Hello yagom!

//연산자를 통한 문자열 비교
var isSameString: Bool = false

isSameString = hello == "Hello"
print(isSameString) // true

isSameString = hello == "hello"
print(isSameString)

isSameString = yagom == "yagom"
print(isSameString) // true

isSameString = yagom == hello
print(isSameString) //false

//메서드를 통한 접두어, 접미어 확인
var hasPrefix: Bool = false
hasPrefix = hello.hasPrefix("He")
print(hasPrefix)

hasPrefix = hello.hasPrefix("HE")
print(hasPrefix)

hasPrefix = greeting.hasPrefix("Hello")
print(hasPrefix)

hasPrefix = yagom.hasPrefix("gom")
print(hasPrefix)

hasPrefix = hello.hasPrefix("Hello")
print(hasPrefix)

var hasSuffix: Bool = false
hasSuffix = hello.hasSuffix("He")
print(hasSuffix)

hasSuffix = hello.hasSuffix("llo")
print(hasSuffix)

hasSuffix = hello.hasSuffix("He")
print(hasSuffix)

hasSuffix = greeting.hasSuffix("yagom")
print(hasSuffix)

hasSuffix = greeting.hasSuffix("yagom!")
print(hasSuffix)

hasSuffix = yagom.hasSuffix("gom")
print(hasSuffix)

//메서드를 통한 대소문자 변환
var convertedString: String = ""
convertedString = hello.uppercased()
print(convertedString)

convertedString = hello.lowercased()
print(convertedString)

convertedString = yagom.uppercased()
print(convertedString)

convertedString = greeting.uppercased()
print(convertedString)

convertedString = greeting.lowercased()
print(convertedString)


//프로퍼티를 통한 빈 문자열 확인
var isEmptyString: Bool = false
isEmptyString = greeting.isEmpty
print(isEmptyString)

greeting = "안녕"
isEmptyString = greeting.isEmpty
print(isEmptyString)

greeting = "" //공백은 빈문자열X
isEmptyString = greeting.isEmpty
print(isEmptyString)

//프로퍼티를 이용해 문자열 길이 확인
print(greeting.count)

greeting = "안녕하세요"
print(greeting.count)

greeting = "안녕!"
print(greeting.count)

greeting = """
안녕하세요 저는 야곰입니다.
스위프트 잘하고 싶어요
잘 부탁합니다!
"""
print(greeting)

// Any, AnyObject와 nil
var someVar : Any = "yagom"
someVar = 50
someVar = 100.1
print(someVar)

```

## 3.6 Any, AnyObject와 nil
Any는 스위프트의 모든 데이터 타입을 사용할 수 있다는 뜻입니다. 변수 또는 상수의 데이터 타입이 Any로 지정되어 있다면 그 변수 또는 상수에는 어떤 종류의 데이터 타입이든지 상관없이 할당할 수 있습니다.
AnyObject는 Any보다는 조금 한정된 의미로 클래스의 인스턴스만 할당할 수 있습니다. 
nil은 특정 타입이 아니라 '없음'을 나타내는 스위프트의 키워드입니다. 즉, 변수 또는 상수에 값이 들어있지 않고 비어있음을 나타내는 데 사용합니다.
