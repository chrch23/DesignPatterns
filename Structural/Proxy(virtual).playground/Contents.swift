import Foundation

class User {
    let name = "Admin"
}

protocol Protocol {
    func connect(user: User)
}

class Server: Protocol {
    func connect(user: User) {
        print("\(user.name) is connecting...")
    }
}

class Proxy: Protocol {
    lazy private var server = Server()
    
    func connect(user: User) {
        server.connect(user: user)
    }
}

let user = User()
let proxy = Proxy()
proxy.connect(user: user)
