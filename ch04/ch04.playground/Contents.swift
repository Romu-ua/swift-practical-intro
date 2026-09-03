let array: [Int] = []

let dictionary = ["a": 1, "b": 2]
let dictionary2: [String: Int] = [:]
var dictionary3 = ["key1":1]
dictionary3["key1"] = nil
print(dictionary3)

let range = 1..<4
for value in range {
    print(value)
}

let string = "abc"
let startIndex = string.startIndex
let endIndex = string.endIndex
print(type(of: startIndex))
print(type(of: endIndex))


let array2 = [1, 2, 3, 4, 5, 6]
var enumrated: [Int] = []
array2.forEach({ element in enumrated.append(element) })
print(enumrated)

enumrated.removeAll()
enumrated = array2.filter({ element in element % 2 == 0})
print(enumrated)

let array3 = [1, 2, 3, 4, 5]
let sum = array3.reduce(0, { result, element in result + element})

