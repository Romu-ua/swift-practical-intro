var temporaryDate: String?

class SomeClass {
    init() {
        print("Create a temporary data")
        temporaryDate = "a tempoorary data"
    }
    
    deinit() {
        print("Clean up the temporary data")
        temporaryDate = nil
    }
}

var someClass: SomeClass? = SomeClass()
print(temporaryDate)

someClass = nil
print(temporaryDate)
