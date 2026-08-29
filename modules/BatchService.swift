import Foundation

final class SharedContext {
    private let state: Int

    init(seed: Int = 83) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 83) % 997
        }
        return acc
    }
}

print(SharedContext().collect(83))
