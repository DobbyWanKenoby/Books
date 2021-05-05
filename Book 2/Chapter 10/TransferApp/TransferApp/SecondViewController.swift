//
//  SecondViewController.swift
//  TransferApp
//
//  Created by Василий Усов on 11.02.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    // текстовое поле на сцене
    @IBOutlet var dataTextField: UITextField!
    
    // изменяемое значение
    var updatingData: String = ""
    
    // замыкание
    var completionHandler: ((String) -> Void)?
    
    // делегат
    var handleUpdatedDataDelegate: DataUpdateProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTextFieldData(withText: updatingData)
    }
    
    // обновляем данные в текстовом поле
    private func updateTextFieldData(withText text: String) {
        dataTextField.text = text
    }
    
    // Переход от Б к А
    // Передача данных с помощью замыкания
    @IBAction func saveDataWithClosure (_ sender: UIButton) {
        // получаем обновленные данные
        let updatedData = dataTextField.text ?? ""
        // вызваем замыкание
        completionHandler?(updatedData)
        // возвращаемся на предыдущий экран
        navigationController?.popViewController(animated: true)
    }

    
    // Переход от Б к А
    // Передача данных с помощью делегата
    @IBAction func saveDataWithDelegate (_ sender: UIButton) {
        // получаем обновленные данные
        let updatedData = dataTextField.text ?? ""
        // вызваем метод делегата
        handleUpdatedDataDelegate?.onDataUpdate(data: updatedData)
        // возвращаемся на предыдущий экран
        navigationController?.popViewController(animated: true)
    }
    
    // Переход от Б к А
    // Передача данных с помощью свойства
    @IBAction func saveDataWithProperty(_ sender: UIButton) {
        self.navigationController?.viewControllers.forEach{ viewController in
            (viewController as? ViewController)?.updatedData = dataTextField.text ?? ""
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // определяем идентификатор segue
        switch segue.identifier {
        case "toFirstScreen":
            // подготовка к переходу на первый экран
            prepareFirstScreen(segue)
        default:
            break
        }
    }
    
    // подготовка к переходу на экран редактирования
    private func prepareFirstScreen(_ segue: UIStoryboardSegue) {
        // безопасно извлекаем опциональное значение
        guard let destinationController = segue.destination as? ViewController else {
            return
        }
        destinationController.updatedData = dataTextField.text ?? ""
    }
}
