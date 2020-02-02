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

class UsbAdapter: UsbProtocol {
    
    private var _usb_c: Usb_c
    
    init(usb_c: Usb_c) {
        self._usb_c = usb_c
    }
    
    func connectMac() {
        print("Connect iPhone to Mac using usb\n")
    }
    
}

let usb_c = Usb_c()
usb_c.connectIphone()

let usb = Usb()
usb.connectMac()

let usbAdapter = UsbAdapter(usb_c: usb_c)
usbAdapter.connectMac()
