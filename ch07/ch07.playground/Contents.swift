struct Greeting {
    var to = "Yosuke Ishikawa" {
        willSet {
            print("willSet: (to: \(self.to), newValue \(newValue))")
        }
        
        didSet {
            print("didSet: (to \(self.to))")
        }
    }
}

var greeting = Greeting()
greeting.to = "Yusei Nishiyama"

// クロージャを定義して即呼び出し。
// 最後の()で呼び出していなければ、() -> Intになる
struct SomeStruct {
    var value: Int = {
        print("valueの値を生成します")
        return 1
    }()
    
    lazy var lazyValue: Int = {
        print("lazyValueの値を生成します")
        return 2
    }()
}

var someStruct = SomeStruct()
print("SomeStructをインスタンス化しました！")
print("valueの値は\(someStruct)です")
print("lazyValueの値は\(someStruct.lazyValue)です")


struct Greeting2 {
    var to = "Yoseke Ishikawa"
    var body: String {
        get {
            return "Hello, \(to)!"
        }
    }
}

let greeting2 = Greeting2()
print(greeting2.body)

struct Temperature {
    var celsius: Double = 0.0
    
    var fahrenheit: Double {
        get {
            return (9.0 / 5.0) * celsius + 32.0
        }
        set {
            celsius = (5.0 / 9.0) * (newValue - 32.0)
        }
    }
}

var templerature = Temperature()
print(templerature.celsius)
print(templerature.fahrenheit)
templerature.celsius = 20
print(templerature.fahrenheit)
templerature.fahrenheit = 0
print(templerature.celsius)

struct Greeting3 {
    let to: String
    var body: String {
        return "Hello, \(to)"
    }
    
    init(to: String) {
        self.to = to
    }
}

let greeting3 = Greeting3(to: "42")
let body = greeting3.body
print(greeting3.to)
print(body)

struct Item {
    let id: Int
    let title: String
    
    init?(dictionary: [String: Any]) {
        guard let id = dictionary["id"] as? Int,
              let title = dictionary["title"] as? String else {
            return nil
        }
        
        self.id = id
        self.title = title
    }
}

let dictionaries: [[String: Any]] = [
    ["id": 1, "title": "abc"],
    ["id": 2, "title": "def"],
    ["title": "ghi"],
    ["id": 3, "title": "jkl"]
]

// イニシャライザはOptinal<Item>を返してくるので、if let 文でアンラップする
for dictionary in dictionaries {
    if let item = Item(dictionary: dictionary) {
        print(item)
    } else {
        print("エラー： 辞書 \(dictionary)からItemを生成できませんでした")
    }
}

struct ValueContainer {
    let stringValue = "abc"
    let intValue = 123
    
    func getValue() -> String {
        return stringValue
    }
    
    func getValue() -> Int {
        return intValue
    }
}

// 戻り値によるオーバーロード
let valueContainer = ValueContainer()
let stirng: String = valueContainer.getValue()
let int: Int = valueContainer.getValue()
print(stirng)
print(int)

// structに自動生成されるメンバーワイズイニシャライザがある
struct Progression {
    var numbers: [Int]
    
    subscript(index: Int) -> Int {
        get {
            return numbers[index]
        }
        
        set {
            numbers[index]
        }
    }
}


var progression = Progression(numbers: [1, 2, 3])
let element1 = progression[1]
print(element1)


extension String {
    func printSelf() {
        print(self)
    }
}

let string = "abc"
string.printSelf()

extension String {
    var enclosedString: String {
        return "【\(self)】"
    }
}

let title = "重要".enclosedString + "今日はお休み"
print(title)
