import Foundation

protocol Mood {
    func present()
}

class Sad: Mood {
    func present() {
        print("I'm sad")
    }
}

class Happy: Mood {
    func present() {
        print("I'm happy")
    }
}

protocol MoodFactory {
    func produce() -> Mood
}

class SadFactory: MoodFactory {
    func produce() -> Mood {
        print("Sad mood has produced")
        return Sad()
    }
}

class HappyFactory: MoodFactory {
    func produce() -> Mood {
        print("Happy mood has produced")
        return Happy()
    }
}

let sadFactory = SadFactory()
let sad = sadFactory.produce()
sad.present()

let happyFactory = HappyFactory()
let happy = happyFactory.produce()
happy.present()
