// 2
class Application {
    var name: String
    init(name: String) {
        print("создание объекта")
        self.name = name
    }
    deinit {
        print("уничтожение объекта")
    }
}

func loadResources(forApp: Application) {
    print("начало функции loadResources")
    let appPath = "./bin/\(forApp.name)/"
    // ... последующие операции внутри функции
    print("завершение функции loadResources")
}

// функция - точка входа
func main(testMode: Bool) {
    print("начало функции main")
    let app = Application(name: "Calculator")
    loadResources(forApp: app)
    // ... последующие операции внутри функции
    print("завершение функции main")
}

// начало работы программы
main(testMode: true)

// 4

class House {
    var title: String
    var owner: Human?
    init(title: String, owner: Human? = nil) {
        print("Дом \(title) создан")
            self.title = title
            self.owner = owner
        return
    }
    deinit{
        print("Дом \(title) уничтожен")
    }
}

class Human {
    var name: String
    init(name: String) {
        print("Владелец \(name) создан")
        self.name = name
        return
    }
    
    deinit{
        print("Владелец \(name) уничтожен")
    }
}

//5
// создаем область видимости
if true { // шаг 1
    let houseOwner = Human(name:"Василий")
    if true { // шаг 2
        let house = House(title:"Частный дом", owner: houseOwner)
    } // шаг 3
    // шаг 4
    let secondHouse = House(title: "Квартира", owner: houseOwner)
} // шаг 5

