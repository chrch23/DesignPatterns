import Foundation

protocol Observer {
    func didGet(task: String)
}

protocol Subject {
    func add(observer: Observer)
    func remove(observer: Observer)
    func notify()
}

class Teacher: Subject {
    
    var task = ""
    private var _observerCollection = NSMutableSet()
    
    func add(observer: Observer) {
        _observerCollection.add(observer)
        print("Add pupil")
    }
    
    func remove(observer: Observer) {
        _observerCollection.remove(observer)
        print("Remove pupil")
    }
    
    func notify() {
        for observer in _observerCollection {
            (observer as! Observer).didGet(task: task)
        }
    }
    
}

class FirstPupil: NSObject, Observer {
    func didGet(task: String) {
        print("First pupil's task: \(task)")
    }
}

class SecondPupil: NSObject, Observer {
    func didGet(task: String) {
        print("Second pupil's task: \(task)")
    }
}

let teacher = Teacher()
let firstPupil = FirstPupil()
let secondPupil = SecondPupil()

teacher.add(observer: firstPupil)
teacher.add(observer: secondPupil)

teacher.task = "New task one"
teacher.notify()

teacher.remove(observer: secondPupil)

teacher.task = "New task two"
teacher.notify()
