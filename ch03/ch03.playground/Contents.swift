import Foundation

let a = Int8.max
let b = Int8.min

let result = 7 + 9
let output = "結果 \(result)"

let haiku = """
    五月雨を
    あつめて早し
    最上川
"""
print(haiku)

// caseInsensitiveは大文字、小文字を区別しないという意味
let options = String.CompareOptions.caseInsensitive
let order = "abc".compare("ABC", options: options)
order == ComparisonResult.orderedSame

let none = Optional<Int>.none
print(none)
let some = Optional<Int>.some(1)
print(some)

//let none1 = Optional.none
let none2: Int? = Optional.none
print(none2)

let optinalInt: Int? = nil
let optinalString: String? = nil
print(type(of: optinalInt), ":" , String(describing: optinalInt))
print(type(of: optinalString), ":", String(describing: optinalString))


let optinalA: String? = "a"
print(type(of: optinalA))
if let a = optinalA {
    print(type(of: a))
}

let optinalInt2: Int? = 1
let int1 = optinalInt2 ?? 3
print(int1)
let optinalInt3: Int? = nil
let int2 = optinalInt3 ?? 3
print(int2)

let optinalDouble = Optional(1.0)
let optinalIsInfinity = optinalDouble?.isInfinite
print(optinalIsInfinity)

let d = Optional(17)
let e = d.map({value in value * 2})

// クロージャ自身がoptionalを返すときに、複数のOptionalをまとめてくれるのがflatMap
// Int()の中身がIntだとOptinalはつけないが、StringだとOptinalをつけて返す
let f: String? = "17"
let g = f.flatMap({value in Int(value)})
print(type(of: g))
let h = f.map({value in Int(value)})
print(type(of: h))

var tuple: (Int, String)
tuple = (1, "a")
print(tuple)

let any = 1 as Any
print(type(of: any)) // typeは実行時の型を調べるため、Intが表示されている
let inta = any as? Int
print(type(of: inta))
let stringa = any as? String
print(type(of: stringa))
print(stringa) // nil


