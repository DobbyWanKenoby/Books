import UIKit

class NumberViewController: UIViewController {
    
    // Экземпляр игры с числами
    var game: Game<SecretNumericValue>!
    
    // Элементы на сцене
    @IBOutlet var slider: UISlider!
    @IBOutlet var secretValueLabel: UILabel!
    
    // MARK: - Жизненный цикл

    override func viewDidLoad() {
        super.viewDidLoad()
        game = (GameFactory.getNumericGame() as! Game<SecretNumericValue>)
        // Обновляем данные о текущем значении загаданного числа
        updateLabelWithSecretNumber(newText: String(game.secretValue.value))
    }
    
    // MARK: - Взаимодействие View - Model
    
    // Проверка выбранного пользователем числа
    @IBAction func checkNumber() {
        // Высчитываем очки за раунд
        var userSecretValue = game.secretValue
        userSecretValue.value = Int(slider.value)
        game.calculateScore(secretValue: game.secretValue, userValue: userSecretValue)
        // Проверяем, окончена ли игра
        if game.isGameEnded {
            // Показываем окно с итогами
            showAlertWith(score: game.score)
            // Рестартуем игру
            game.restartGame()
        } else {
            // Начинаем новый раунд игры
            game.startNewRound()
        }
        // Обновляем данные о текущем значении загаданного числа
        updateLabelWithSecretNumber(newText: String(game.secretValue.value))
    }
    
    // MARK: - Обновление View
    
    // Обновление текста загаданного числа
    func updateLabelWithSecretNumber(newText: String ) {
        secretValueLabel.text = newText
    }
    
    // Отображение всплывающего окна со счетом
    private func showAlertWith( score: Int ) {
        let alert = UIAlertController(
                        title: "Игра окончена",
                        message: "Вы заработали \(score) очков",
                        preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Начать заново", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

