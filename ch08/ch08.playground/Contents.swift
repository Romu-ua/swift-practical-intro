struct Container {
    var count = 0
    
    mutating func increment() {
        count += 1
    }
}

var container = Container()
container.increment()
container.increment()
print(container.count)

class User {
    let id: Int
    var message: String {
        return "hello"
    }
    
    init(id: Int) {
        self.id = id
    }
    
    func printProfile() {
        print("id: \(id)")
        print("message: \(message)")
    }
}

class RegisterUser: User {
    let name: String
    
    init(id: Int, name: String) {
        self.name = name
        super.init(id: id)
    }
}

let registerUser = RegisterUser(id: 1, name: "admin")
registerUser.printProfile()

enum Symbol : Character {
    case sharp = "#"
    case dollar = "$"
    case percent = "%"
}

let symbol = Symbol(rawValue: "#")
let notSymbol = Symbol(rawValue: "4")
print("\(type(of: symbol)) : \(symbol)")
print("\(notSymbol)")

enum Fruit: CaseIterable {
    case peach, apple(color: AppleColor), grape
    
    static var allCases: [Fruit] {
        return [
            .peach,
            .apple(color: .red),
            .apple(color: .green),
            .grape
        ]
    }
}

enum AppleColor {
    case green, red
}

print(Fruit.allCases)
