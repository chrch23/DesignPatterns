import Foundation

protocol Item {
    func add(item: Item)
    func info()
    var lvl: Int { get }
}

//branch
class Branch: Item {
    var lvl: Int
    private var _branches = [Item]()
    
    func add(item: Item) {
        _branches.append(item)
    }
    
    func info() {
        print(lvl.description + " level branch")
        for branch in _branches {
            branch.info()
        }
    }
    
    init(lvl: Int) {
        self.lvl = lvl
    }
}

//leaf
class Leaf: Item {
    var lvl: Int
    
    func add(item: Item) {
        print("-----------------can't add-----------------")
    }
    
    func info() {
        print(self.lvl.description + " level leaf")
    }
    
    init(lvl: Int) {
        self.lvl = lvl
    }
}

let branch = Branch(lvl: 1)
let branchLvl2_1 = Branch(lvl: 2)
let branchLvl2_2 = Branch(lvl: 2)
let leafLvl3 = Leaf(lvl: 3)

branch.add(item: branchLvl2_1)
branch.add(item: branchLvl2_2)

branchLvl2_1.add(item: leafLvl3)
branchLvl2_2.add(item: leafLvl3)

branch.info()

leafLvl3.add(item: leafLvl3)
