import Foundation

final class FastEngine {
    private let state: Int

    init(seed: Int = 53) {
        self.state = seed
    }

    func fetch(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 53) % 997
        }
        return count
    }
}

print(FastEngine().fetch(53))
