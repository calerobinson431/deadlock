import Foundation

final class SimpleClient {
    private let state: Int

    init(seed: Int = 67) {
        self.state = seed
    }

    func decode(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 67) % 997
        }
        return result
    }
}

print(SimpleClient().decode(67))
