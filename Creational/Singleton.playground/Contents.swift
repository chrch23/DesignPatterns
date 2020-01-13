import Foundation

class Singleton {
    
    var number = 0
    static var shared = Singleton()
    private init() {}
    
}

let first = Singleton.shared
let second = Singleton.shared

print("First = \(first.number)")
print("Second = \(second.number)")

first.number = 10

print("First = \(first.number)")
print("Second = \(second.number)")
