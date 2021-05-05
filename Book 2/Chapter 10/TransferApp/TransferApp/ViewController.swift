//
//  ViewController.swift
//  TransferApp
//
//  Created by Василий Усов on 11.02.2021.
//

import UIKit

class ViewController: UIViewController, DataUpdateProtocol  {
    
    // текстовая метка на сцене
    @IBOutlet var dataLabel: UILabel!
    
    // актуальное обновленное значение
    var updatedData: String = "Test data"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateLabel(withText: updatedData)
    }
    
    // Обновляем данные в текстовой метке
    private func updateLabel(withText text: String) {
        dataLabel.text = updatedData
    }
    
    // переход от А к Б
    // передача данных с помощью свойства и инициализация замыкания
    @IBAction func editDataWithСlosure(_ sender: UIButton) {
        // получаем вью контроллер
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editScreen = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController

        // передаем данные
        editScreen.updatingData = dataLabel.text ?? ""
        
        // устанавливаем текущий класс в качестве делегата
        editScreen.completionHandler = { [unowned self] updatedValue in
            updatedData = updatedValue
            updateLabel(withText: updatedValue)
        }

        // открываем следующий экран
        self.navigationController?.pushViewController(editScreen, animated: true)
    }

    
    // переход от А к Б
    // передача данных с помощью свойства и установка делегата
    @IBAction func editDataWithDelegate(_ sender: UIButton) {
        // получаем вью контроллер
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editScreen = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController

        // передаем данные
        editScreen.updatingData = dataLabel.text ?? ""
        
        // устанавливаем делегат
        editScreen.handleUpdatedDataDelegate = self

        // открываем следующий экран
        self.navigationController?.pushViewController(editScreen, animated: true)
    }
    
    // Переход от А к Б
    // Передача данных с помощью свойства
    @IBAction func editDataWithProperty(_ sender: UIButton) {
        // получаем вью контроллер
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editScreen = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController

        // передаем данные
        editScreen.updatingData = dataLabel.text ?? ""

        // открываем следующий экран
        self.navigationController?.pushViewController(editScreen, animated: true)
    }
    
    // Переход от А к Б
    // Передача данных с помощью segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // определяем идентификатор segue
        switch segue.identifier {
        case "toEditScreen":
            // обрабатываем переход
            prepareEditScreen(segue)
        default:
            break
        }
    }
    
    // подготовка к переходу на экран редактирования
    private func prepareEditScreen(_ segue: UIStoryboardSegue) {
        // безопасно извлекаем опциональное значение
        guard let destinationController = segue.destination as? SecondViewController else {
            return
        }
        destinationController.updatingData = dataLabel.text ?? ""
    }
    
    @IBAction func unwindToFirstScreen(_ segue: UIStoryboardSegue) {}
    
    func onDataUpdate(data: String) {
        updatedData = data
        updateLabel(withText: data)
    }
}

