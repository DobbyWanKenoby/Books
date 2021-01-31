//: [Previous](@previous)

import Foundation

//1
class AboutMan{
    var firstName = "Имя"
    var secondName = "Фамилия"
    lazy var wholeName: String = self.generateWholeName()
    lazy var aaa: ()->String = {return "\(self.firstName) \(self.secondName)"}
    init(name: String, secondName: String){
        ( self.firstName, self.secondName ) = ( name, secondName )
    }
    func generateWholeName() -> String{
        return firstName + " " + secondName
    }
}
var Me = AboutMan(name:"Егор", secondName:"Петров")
Me.wholeName

//2
Me.aaa() // "Егор Петров"
Me.secondName = "Иванов"
Me.aaa() // "Егор Петров"

