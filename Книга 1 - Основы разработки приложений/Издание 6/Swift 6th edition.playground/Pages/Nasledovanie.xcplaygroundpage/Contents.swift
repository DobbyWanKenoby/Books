//: [Previous](@previous)

import Foundation

//1
// суперкласс
class Quadruped {
    var type = ""
    var name = ""
    func walk(){
        print("walk")
    }
}
// подкласс
class Dog: Quadruped {
    //метод из листинга 5
    override init(){
        super.init()
        self.type = "dog"
    }
    //инициализатор листинг 1 со страницы Init
    convenience init(text: String){
         self.init()
         print(text)
    }
    func bark(){
        print("woof")
    }
    // метод из листинга 2
    func printName(){
        print(self.name)
    }
}
var dog = Dog()
dog.type = "dog"
dog.walk() // выводит walk
dog.bark() // выводит woof

//2
//...доработанный класс Dog из листинга 1
// var dog = Dog()
dog.name = "Dragon Wan Helsing"
dog.printName()

//3
class NoisyDog: Dog{
    override func bark(){
        // 3 строки для листинга 3
        print ("woof")
        print ("woof")
        print ("woof")
        // 3 строки для листинга 4
        for _ in 1...3{
            super.bark()
        }
    }
    
    
}

var badDog = NoisyDog()
badDog.bark()

//4
//...класс NoisyDog из листинга 3

//5
//...класс Dog из листинга 1

//6
var animalsArray: [Quadruped] = []
var someAnimal = Quadruped()
var myDog = Dog()
var sadDog = NoisyDog()
animalsArray.append(someAnimal)
animalsArray.append(myDog)
animalsArray.append(sadDog)

//7
for item in animalsArray {
    if item is Dog {
        print("Yap")
    }
}
// Yap выводится 2 раза

// 3 со страницы Any
let someObjects: [AnyObject] = [Dog(), NoisyDog(), Dog()]

print("---")

// 4 со страницы Any
for object in someObjects {
    let animal = object as! Dog
    print(animal.type)
}

//5  со страницы Any
for object in someObjects as! [Dog]{
    print(object.type)
}

//1 со страницы Init
//листинг 1 доработанный
var someDog = Dog(text: "Экземпляр класса Dog создан")

