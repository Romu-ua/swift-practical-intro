func invite(user: String, to group: String) {
    print("\(user) is invited to \(group)")
}

invite(user: "Ishikawa", to: "Succer Club")

func greet(user: inout String) {
    if user.isEmpty {
        user = "Anonymous"
    }
    print("Hello, \(user)")
}

var user: String = ""
greet(user: &user)
print(user)


let double = { (x: Int) -> Int in
        return x * 2
}
print(double(2))

// クロージャを関数の引数にしている例
func run(operation: (Int, Int) -> Int) {
    let result = operation(3, 5)
    print(result)
}

run(operation: { (int1: Int, int2: Int) in
    return int1 + int2
})

let greeting: (String) -> String

do {
    let symbol = "!"
    greeting = { user in
            return "Hello, \(user)\(symbol)"
    }
}

print(greeting("world"))
//print(symbol) スコープ外 上記のクロージャからならアクセス可能

let counter: () -> Int
do {
    var count = 0
    counter = {
        count += 1
        return count
    }
}

print(counter())
print(counter())
print(counter())
print(counter())


