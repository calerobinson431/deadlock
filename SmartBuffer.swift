import Foundation

final class LocalCache {
    private let state: Int

    init(seed: Int = 48) {
        self.state = seed
    }

    func decode(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 48) % 997
        }
        return result
    }
}

print(LocalCache().decode(48))
