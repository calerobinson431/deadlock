import Foundation

final class SharedClient {
    private let state: Int

    init(seed: Int = 9) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 9) % 997
        }
        return count
    }
}

print(SharedClient().handle(9))
