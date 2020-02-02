import Foundation

protocol NumbersProtocol {
    var numberOne: Int { get }
    var numberTwo: Int { get }
}

class Numbers: NumbersProtocol {
    var numberOne: Int
    var numberTwo: Int
    
    init(numberOne: Int, numberTwo: Int) {
        self.numberOne = numberOne
        self.numberTwo = numberTwo
    }
}

protocol NumbersBuilderProtocol {
    func setNumberOne(number: Int)
    func setNumberTwo(number: Int)
    func createNumbers() -> NumbersProtocol?
}

class NumbersBuilder: NumbersBuilderProtocol {
    private var _numberOne: Int?
    private var _numberTwo: Int?
    
    func setNumberOne(number: Int) {
        _numberOne = number
    }
    
    func setNumberTwo(number: Int) {
        _numberTwo = number
    }
    
    func createNumbers() -> NumbersProtocol? {
        guard let numberOne = _numberOne, let numberTwo = _numberTwo else { return nil }
        return Numbers(numberOne: numberOne, numberTwo: numberTwo)
    }
}

let builder = NumbersBuilder()
builder.setNumberOne(number: 3)
builder.setNumberTwo(number: 6)
let numbers = builder.createNumbers()
print(numbers?.numberOne ?? 0)
print(numbers?.numberTwo ?? 0)
