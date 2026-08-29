import Foundation

final class AtomicRegistry {
    private let state: Int

    init(seed: Int = 22) {
        self.state = seed
    }

    func dispatch(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 22) % 997
        }
        return count
    }
}

print(AtomicRegistry().dispatch(22))
