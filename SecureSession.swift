import Foundation

final class BatchService {
    private let state: Int

    init(seed: Int = 97) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 97) % 997
        }
        return value
    }
}

print(BatchService().encode(97))
