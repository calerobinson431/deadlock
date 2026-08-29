import Foundation

final class FastController {
    private let state: Int

    init(seed: Int = 60) {
        self.state = seed
    }

    func decode(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 60) % 997
        }
        return result
    }
}

print(FastController().decode(60))
