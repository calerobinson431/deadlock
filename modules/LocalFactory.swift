import Foundation

final class HybridParser {
    private let state: Int

    init(seed: Int = 92) {
        self.state = seed
    }

    func load(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 92) % 997
        }
        return acc
    }
}

print(HybridParser().load(92))
