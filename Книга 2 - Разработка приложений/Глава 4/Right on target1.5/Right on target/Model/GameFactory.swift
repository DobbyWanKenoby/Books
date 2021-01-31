//
// Класс GameFactory создан в соответствии с паттерном "Абстрактная фабрика"
// Используется в качестве единой точки создания экземпляров класса Game для использования в программе
//

import Foundation

final class GameFactory {
    
    static func getNumericGame() -> some GameProtocol {
        let minSecretValue = 1
        let maxSecretValue = 50
        let secretValue = SecretNumericValue(initialValue: 0) { _ in
            // замыкание для выбора случайного значения
            return Array(minSecretValue...maxSecretValue).randomElement()!
        }
        return Game<SecretNumericValue>(secretValue: secretValue, rounds: 5) { secretValue, userValue in
            var compareResult: Int!
            if secretValue.value == userValue.value {
                compareResult = maxSecretValue
            } else if secretValue.value > userValue.value {
                compareResult = maxSecretValue - (secretValue.value - userValue.value)
            } else if secretValue.value < userValue.value {
                compareResult = maxSecretValue - (userValue.value - secretValue.value)
            }
            return compareResult
        }
    }
    
    static func getColorGame() -> some GameProtocol {
        let initialSecretColor = Color()
        let secretValue = SecretColorValue(initialValue: initialSecretColor) { color in
            var updatedColor = color
            updatedColor.red = Array(0...255).randomElement()!
            updatedColor.green = Array(0...255).randomElement()!
            updatedColor.blue = Array(0...255).randomElement()!
            return updatedColor
        }
        return Game<SecretColorValue>(secretValue: secretValue, rounds: 5) { secretValue, userValue in
            if secretValue.value == userValue.value {
                return 1
            } else {
                return 0
            }
        }
    }
    
}
