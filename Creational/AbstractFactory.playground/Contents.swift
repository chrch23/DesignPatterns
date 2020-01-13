import Foundation

protocol Hat {
    func wear()
}

class WhiteHat: Hat {
    func wear() {
        print("Wear a white hat")
    }
}

class BlackHat: Hat {
    func wear() {
        print("Wear a black hat")
    }
}

protocol Socks {
    func wear()
}

class WhiteSocks: Socks {
    func wear() {
        print("Wear white socks")
    }
}

class BlackSocks: Socks {
    func wear() {
        print("Wear black socks")
    }
}

protocol Factory {
    func produceHat() -> Hat
    func produceSocks() -> Socks
}

class WhiteFactory: Factory {
    
    func produceHat() -> Hat {
        print("White hat has produced")
        return WhiteHat()
    }
    
    func produceSocks() -> Socks {
        print("White socks have produced")
        return WhiteSocks()
    }
    
}

class BlackFactory: Factory {
    
    func produceHat() -> Hat {
        print("Black hat has produced")
        return BlackHat()
    }
    
    func produceSocks() -> Socks {
        print("Black socks have produced")
        return BlackSocks()
    }
    
}

let whiteFactory = WhiteFactory()
let whiteHat = whiteFactory.produceHat()
whiteHat.wear()

let blackFactory = BlackFactory()
let blackSocks = blackFactory.produceSocks()
blackSocks.wear()
