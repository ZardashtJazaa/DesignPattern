
import Foundation

protocol Device {
    
    func aboutDevice() -> String
}


struct OperatingSystem {
    
    enum systemType:String {
        case IOS
        case macOS
        case iPadOS
        case watchOS
        
    }
    
    var versions: Int
    var type: systemType
}


struct Mac:Device {
    var system: OperatingSystem
    
    init(system:OperatingSystem) {
        self.system = system
    }
    
    func aboutDevice() -> String {
        return "Mac: \(system.type.rawValue) \(system.versions)"
    }
}

struct watchOS:Device {
    var system: OperatingSystem
    
    init(system:OperatingSystem) {
        self.system = system
    }
    
    func aboutDevice() -> String {
        return "Watch : \(system.type.rawValue) \(system.versions)"
    }
}


struct iPhone:Device {
    var system: OperatingSystem
    
    init(system:OperatingSystem) {
        self.system = system
    }
    
    func aboutDevice() -> String {
        return "iPhone: \(system.type.rawValue) \(system.versions)"
    }
}

struct iPad:Device {
    var system: OperatingSystem
    
    init(system:OperatingSystem) {
        self.system = system
    }
    
    func aboutDevice() -> String {
        return "iPad: \(system.type.rawValue) \(system.versions)"
    }
}


//MARK: - Factory
struct ComputerFactory {
    
    static func makeComputer(system:OperatingSystem) -> Device {
        
        switch system.type {
            
        case .IOS:
            return iPhone(system: system)
        case .iPadOS:
            return iPad(system: system)
        case .macOS:
            return Mac(system: system)
        case .watchOS:
            return watchOS(system: system)
            
        }
    }
    
}

let computer = ComputerFactory.makeComputer(system: OperatingSystem(versions: 16, type: .macOS))

//print(computer.aboutDevice())

var system: [OperatingSystem] = [
    OperatingSystem(versions: 13, type: .IOS),
    OperatingSystem(versions: 14, type: .macOS),
    OperatingSystem(versions: 15, type: .iPadOS),
]


system.forEach { system in
    print(ComputerFactory.makeComputer(system: system).aboutDevice())
}
