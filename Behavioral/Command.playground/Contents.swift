import Foundation

class Wallet {
    
    var money: Int
    
    init(money: Int) {
        self.money = money
    }
    
}

protocol Command {
    var isComplete: Bool { get set }
    func execute()
}

class Plus: Command {
    
    private var _wallet: Wallet
    private var _amount: Int
    var isComplete = false
    
    init(wallet: Wallet, amount: Int) {
        self._wallet = wallet
        self._amount = amount
    }
    
    func execute() {
        _wallet.money += _amount
        isComplete = true
    }
    
}

class Minus: Command {
    
    private var _wallet: Wallet
    private var _amount: Int
    var isComplete = false
    
    init(wallet: Wallet, amount: Int) {
        self._wallet = wallet
        self._amount = amount
    }
    
    func execute() {
        _wallet.money -= _amount
        isComplete = true
    }
    
}

class Manager {
    
    private var _payments: [Command] = []
    
    func add(command: Command) {
        self._payments.append(command)
    }
    
    func complete() {
        _payments.filter { $0.isComplete == false }.forEach { $0.execute() }
    }
    
}

let manager = Manager()
let wallet = Wallet(money: 100)

wallet.money

manager.add(command: Plus(wallet: wallet, amount: 50))
manager.add(command: Minus(wallet: wallet, amount: 20))
manager.complete()

wallet.money
