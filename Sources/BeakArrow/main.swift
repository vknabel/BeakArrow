import ArrowKit
import BeakCore
import PathKit

struct BeakArrow: Arrow {
    let arrow: String
    let mode: String?
    let help: String?
    let path: String?
    let function: String?
    let cachePath: String?

    func fire(archerfile: Archerfile, arguments: [String]) throws {
        try beak.execute(arguments: [mode ?? "run"]
            + pathArguments()
            + functionArguments()
            + arguments.dropFirst(mode == nil && isValid(beakCommand: arguments.first) ? 1 : 0)
        )
    }

    func functionArguments() -> [String] {
        if let function = function {
            return [function]
        } else {
            return []
        }
    }

    func modeArgument(_ peek: String?) -> String {
        if let mode = mode {
            return mode
        } else if let peek = peek, isValid(beakCommand: peek) {
            return peek
        } else {
            return "run"
        }
    }

    func pathArguments() -> [String] {
        if let path = path {
            return ["--path", path]
        } else {
            return []
        }
    }

    func isValid(beakCommand: String?) -> Bool {
        if let beakCommand = beakCommand {
            return ["list", "function", "run", "edit"].contains(beakCommand)
        } else {
            return false
        }
    }

    var beak: Beak {
        return Beak(options: beakOptions)
    }

    var beakOptions: BeakOptions {
        return BeakOptions(cachePath: cachePath.map(Path.init(_:)) ?? ".archery/beak")
    }
}

BeakArrow.fire()
