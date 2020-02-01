import Foundation

let array1 = [1, 4, 6, 8, 9]
for item in array1 {
    print("Array1: \(item)")
}

print("\n---------------------\n")

let array2 = [5, 3, 1, 0, 4]
var iterator = array2.makeIterator()
for item in iterator {
    print("Array2: \(item)")
}

print("\n---------------------\n")

while let item = iterator.next() {
    print("Array2: \(item)")
}

print("\n---------------------\n")

let array3 = ["sdf", "dsg", "rew", "psk"]
var iterator2 = array3.makeIterator()
while let item = iterator2.next() {
    print(item)
}
