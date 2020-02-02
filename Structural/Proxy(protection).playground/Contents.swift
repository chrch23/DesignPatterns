import Foundation

class User {
    var name: String
    var password: String
    
    init(name: String, password: String) {
        self.name = name
        self.password = password
    }
}

protocol Protocol {
    func connect(user: User)
}

class Server: Protocol {
    func connect(user: User) {
        print("User with name \(user.name) connected")
    }
}

class Proxy: Protocol {
    private var server: Server!
    
    func connect(user: User) {
        guard server != nil else {
            print("Please make check before")
            return
        }
        server.connect(user: user)
    }
    
    func check(user: User) {
        guard user.password == "123" else {
            print("Password is wrong!")
            return
        }
        print("Password is correct!")
        server = Server()
    }
}

let user = User(name: "Admin", password: "123")
let proxy = Proxy()
proxy.connect(user: user)
proxy.check(user: user)
proxy.connect(user: user)
