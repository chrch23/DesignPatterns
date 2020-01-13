import Foundation

protocol Meal {
    func getPrice() -> Int
    func getDescription() -> String
}

class Breakfast: Meal {
    
    func getPrice() -> Int {
        return 0
    }
    
    func getDescription() -> String {
        return "My breakfast consist of:"
    }
    
}

class Decorator: Meal {
    
    private let _meal: Meal
    
    required init(meal: Meal) {
        self._meal = meal
    }
    
    func getPrice() -> Int {
        return _meal.getPrice()
    }
    
    func getDescription() -> String {
        return _meal.getDescription()
    }
}

class Eggs: Decorator {
    
    required init(meal: Meal) {
        super.init(meal: meal)
    }
    
    override func getPrice() -> Int {
        return super.getPrice() + 10
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " eggs "
    }
    
}

class Bacon: Decorator {
    
    required init(meal: Meal) {
        super.init(meal: meal)
    }
    
    override func getPrice() -> Int {
        return super.getPrice() + 15
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " bacon "
    }
    
}

class Juice: Decorator {
    
    required init(meal: Meal) {
        super.init(meal: meal)
    }
    
    override func getPrice() -> Int {
        return super.getPrice() + 5
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " juice "
    }
    
}

var breakfast: Meal = Breakfast()
print(breakfast.getDescription())
print("Prize: \(breakfast.getPrice())\n")

breakfast = Eggs(meal: breakfast)
breakfast = Bacon(meal: breakfast)
breakfast = Bacon(meal: breakfast)
breakfast = Juice(meal: breakfast)

print(breakfast.getDescription())
print("Prize: \(breakfast.getPrice())\n")
