import Foundation

protocol Level {
    func info()
}

class Junior: Level {
    func info() {
        print("I'm Junior")
    }
}

class Middle: Level {
    func info() {
        print("I'm Middle")
    }
}

class Senior: Level {
    func info() {
        print("I'm Senior")
    }
}

class Programmer {
    
    private var _level: Level
    
    init(level: Level) {
        self._level = level
    }
    
    func performLevel() {
        _level.info()
    }
    
    func setLevel(level: Level) {
        self._level = level
        print("\nNew level!\n")
    }
    
}

let programmer = Programmer(level: Junior())
programmer.performLevel()

programmer.setLevel(level: Senior())
programmer.performLevel()
