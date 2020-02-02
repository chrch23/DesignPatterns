import Foundation

class Enemy {
    let hp: Int
    let name: String
    
    init(hp: Int, name: String) {
        self.hp = hp
        self.name = name
    }
}

protocol Chain {
    var damage: Int { get }
    var next: Chain? { get set }
    func fight(with enemy: Enemy)
}

class Sword: Chain {
    var damage = 100
    var next: Chain?
    func fight(with enemy: Enemy) {
        if enemy.hp <= damage {
            print("Sword fight \(enemy.name)")
        } else {
            next?.fight(with: enemy)
        }
    }
}

class Gun: Chain {
    var damage = 500
    var next: Chain?
    func fight(with enemy: Enemy) {
        if enemy.hp <= damage {
            print("Gun fight \(enemy.name)")
        } else {
            next?.fight(with: enemy)
        }
    }
}

class Tank: Chain {
    var damage = 1000
    var next: Chain?
    func fight(with enemy: Enemy) {
        if enemy.hp <= damage {
            print("Tank fight \(enemy.name)")
        } else {
            print("Enemy is unbeatable")
        }
    }
}

let sword = Sword()
let gun = Gun()
let tank = Tank()

sword.next = gun
gun.next = tank

let pony = Enemy(hp: 50, name: "Pony")
let bear = Enemy(hp: 300, name: "Bear")
let dragon = Enemy(hp: 800, name: "Dragon")

sword.fight(with: pony)
sword.fight(with: bear)
sword.fight(with: dragon)
