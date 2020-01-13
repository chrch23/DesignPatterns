import Foundation

enum Type {
    case rap, pop
}

protocol Music {
    func listen()
}

class Rap: Music {
    func listen() {
        print("Listen to rap music")
    }
}

class Pop: Music {
    func listen() {
        print("Listen to pop music")
    }
}

class SimpleFactory {
    
    static func produce(type: Type) -> Music {
        switch type {
        case .rap: return Rap()
        case .pop: return Pop()
        }
    }
    
}

let rap = SimpleFactory.produce(type: .rap)
rap.listen()

let pop = SimpleFactory.produce(type: .pop)
pop.listen()
