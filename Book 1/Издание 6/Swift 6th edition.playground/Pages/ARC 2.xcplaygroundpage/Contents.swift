// 2
// ----- не переносить в книгу
struct Application {
    var name: String
}
// -----

func loadResources(forApp: Application) {
    let appPath = './bin/\(forApp.name)/'
    // ... последующие операции внутри функции
}

// функция - точка входа
func main(testMode: Bool) {
    let app = Application(name: "Calculator")
    loadResources(forApp: app)
    // ... последующие операции внутри функции
}

// начало работы программы
main(testMode: true)










class myClass{
    var description: String
    init(description: String){
        print("Экземпляр \(description) создан")
        self.description = description
    }
    deinit{
        print("Экземпляр \(self.description) уничтожен")
    }
}
var myVar1 = myClass(description: "ОДИН")
if true {
    var myVar2 = myClass(description: "ДВА")
}
