protocol Operation {
    func run(program: Program)
    func end(program: Program)
    func delete(program: Program)
    func install(program: Program)
}

class Run: Operation {
    func run(program: Program) {
        print("!!! - can't run, program is already running")
    }
    
    func end(program: Program) {
        print("ending...")
        program.new(operation: End())
    }
    
    func delete(program: Program) {
        print("!!! - can't delete, program is running")
    }
    
    func install(program: Program) {
        print("!!! - can't install, program is installed")
    }
}

class End: Operation {
    func run(program: Program) {
        print("running...")
        program.new(operation: Run())
    }
    
    func end(program: Program) {
        print("!!! - can't end, program is already ended")
    }
    
    func delete(program: Program) {
        print("deleting...")
        program.new(operation: Delete())
    }
    
    func install(program: Program) {
        print("!!! - can't install, program is already installed")
    }
}

class Delete: Operation {
    func run(program: Program) {
        print("!!! - can't run, there is no program")
    }
    
    func end(program: Program) {
        print("!!! - can't end, there is no program")
    }
    
    func delete(program: Program) {
        print("!!! - can't delete, there is no program")
    }
    
    func install(program: Program) {
        print("installing...")
        program.new(operation: Install())
    }
}

class Install: Operation {
    func run(program: Program) {
        print("running...")
        program.new(operation: Run())
    }
    
    func end(program: Program) {
        print("!!! - can't end, program is already ended")
    }
    
    func delete(program: Program) {
        print("deleting...")
        program.new(operation: Delete())
    }
    
    func install(program: Program) {
        print("!!! - can't install, program is already installed")
    }
}

class Program {
    private var _operation: Operation
    
    init() {
        _operation = Delete()
    }
    
    func new(operation: Operation) {
        self._operation = operation
    }
    
    func run() {
        _operation.run(program: self)
    }
    
    func end() {
        _operation.end(program: self)
    }
    
    func install() {
        _operation.install(program: self)
    }
    
    func delete() {
        _operation.delete(program: self)
    }
}

let pages = Program()
pages.install()
pages.run()
pages.end()
pages.end()
pages.delete()
pages.run()
