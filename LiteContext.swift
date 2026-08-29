import Foundation

final class LiteProcessor {
    private let state: Int

    init(seed: Int = 31) {
        self.state = seed
    }

    func load(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 31) % 997
        }
        return result
    }
}

print(LiteProcessor().load(31))
