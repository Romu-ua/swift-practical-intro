let optinalA: Optional = "A"

if let a = optinalA {
    print(a)
}

let optinalNumber: Int? = nil
if let n = optinalNumber {
    print("")
} else  {
    print("nil")
}

func someFunction(_ number: Int) {
    guard number > 0 else {
        print("number is negative")
        return
    }
    print("number is positive")
}

someFunction(10)
someFunction(-1)

func add(_ optinalA: Int?, _ optinalB: Int?) -> Int? {
    guard let a = optinalA else {
        print("first value is none")
        return nil
    }
    
    guard let b = optinalB else {
        print("second value is none")
        return nil
    }
    return a + b
}

let sum = add(Optional(1), Optional(2))
print(sum)

let value = 0 as Any
outerSwitch: switch value {
case let int as Int:
    let description: String
    switch int {
    case 1, 3, 5, 7, 9:
        description = "奇数"
    case 2, 4, 6, 8:
        description = "偶数"
    default:
        print("対象外の値です")
        break outerSwitch
    }
    print(description)
default:
    print("対象外の型の値です")
}


let integer = 9

switch integer {
case 6:
    print("match: 6")
case 5...10:
    print("match: \(integer)")
default:
    print("default")
}

let pattern = (5..<9) ~= 7
print(pattern)

let value2 = 3
switch value2{
case let matchedValue:
    print(matchedValue)
}


let optionalC = Optional(4)
switch optionalC {
case let a?:
    print(a)
default:
    print("nil")
}

let n: Int? = nil
switch n {
case let a?:
    print(a)
default:
    print("nil")
}

enum Hemisphere {
    case norhern
    case southern
}


let hemisphere = Hemisphere.norhern
// switch文は条件式の型がわかっているから、case文でで列挙型ケースを.から書き始められる。
switch hemisphere {
case .norhern:
    print("match: .norhern")
case .southern:
    print("match: .southern")
}



