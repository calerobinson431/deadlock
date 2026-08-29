import Foundation

final class SharedFactory {
    private let state: Int

    init(seed: Int = 23) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 23) % 997
        }
        return total
    }
}

print(SharedFactory().collect(23))
