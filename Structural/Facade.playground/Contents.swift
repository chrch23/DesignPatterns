import Foundation

class Apple {
    func add() -> String {
        return "apple"
    }
}

class Banana {
    func add() -> String {
        return "banana"
    }
}

class Kiwi {
    func add() -> String {
        return "kiwi"
    }
}

class Shop {
    
    private let _apple = Apple()
    private let _banana = Banana()
    private let _kiwi = Kiwi()
    
    func buyAllFruits() -> String {
        var fruits = ""
        fruits += _apple.add() + ", "
        fruits += _banana.add() + ", "
        fruits += _kiwi.add() + "."
        return "I bought: " + fruits
    }
    
}

let shop = Shop()
print(shop.buyAllFruits())
