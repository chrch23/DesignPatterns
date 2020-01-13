import Foundation

class Office {
    
    final func items() {
        computers()
        tables()
        chairs()
    }
    
    func computers() {
        preconditionFailure("this method should be overriden")
    }
    
    func tables() {
        preconditionFailure("this method should be overriden")
    }
    
    func chairs() {
        preconditionFailure("this method should be overriden")
    }
    
}

class Google: Office {
    
    override func computers() {
        print("Google: 10000 computers")
    }
    
    override func tables() {
        print("Google: 20000 tables")
    }
    
    override func chairs() {
        print("Google: 30000 chairs")
    }
    
}

class Apple: Office {
    
    override func computers() {
        print("Apple: 5000 computers")
    }
    
    override func tables() {
        print("Apple: 10000 tables")
    }
    
    override func chairs() {
        print("Apple: 15000 chairs")
    }
    
}

let google = Google()
google.items()

print("-------------------------")

let apple = Apple()
apple.items()
