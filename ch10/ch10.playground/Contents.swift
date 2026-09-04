// _ は変数名ではないためエラーにならない
func someFunction<T, U>(x: T, y: U) -> U {
    let _: T = x
    let _ = x
    let _ = 1 as? T
    return y
}

func identity<T>(_ x: T) -> T {
    return x
}

print(identity(1))
print(identity("hello"))

func isEqual<T : Equatable>(_ x: T, _ y: T) -> Bool {
    return x == y
}

print(isEqual("abc", "def"))
print(isEqual("abc", "abc"))

/*
 let numbers: [Int] = [3, 1, 2]
 の場合、
 T = Array<Int>
 T.Element = Int
 */
func sorted<T : Collection>(_ argument: T) -> [T.Element]
    where T.Element : Comparable {
        return argument.sorted()
}

sorted([3, 2, 1])


