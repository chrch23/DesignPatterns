import Foundation

class Usb_c {
    func connectIphone() {
        print("Connect iPhone by using usb-c\n")
    }
}

protocol UsbProtocol {
    func connectMac()
}

class Usb: UsbProtocol {
    func connectMac() {
        print("Connect Mac by using usb\n")
    }
}

class Adapter: UsbProtocol {
    
    private var _usb_c: Usb_c
    
    init(usb_c: Usb_c) {
        _usb_c = usb_c
    }
    
    func connectMac() {
        _usb_c.connectIphone()
    }
    
}

let usb_c = Usb_c()
usb_c.connectIphone()

let usb = Usb()
usb.connectMac()

let adapter = Adapter(usb_c: usb_c)
adapter.connectMac()
