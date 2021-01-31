import Foundation

// 24

protocol Vehicle {
    // связанный тип
    associatedtype Identifier
    var uid: Identifier { get set }
}
 
struct Car: Vehicle {
    var uid: Int
}
 
struct Truck: Vehicle {
    var uid: String
}

// 25

func getCar<T: Vehicle>() -> T{
    return Car(uid: 22) as! T
}
 
let someVehicle: Car = getCar()



//func getCar<T: Vehicle>() -> T{
//    return Car(uid: 22) as! T
//}
//
//let someVehicle: Car = getCar()
//
//let anotherVehicle: Truck = getCar()





//protocol VehicleFactory {
//    associatedtype VehicleType
//    func get() -> VehicleType
//}
//
//struct CarFactory: VehicleFactory {
//    func get() -> Car {
//        return Car(uid: 54)
//    }
//}

//func getCar() -> Vehicle {
//    return Car(uid: 93)
//}



//getCar() // Car

// Данная функция всегда будет возвращать значение конкретного типа, который мы передали в нее
// Но, что если добавить некоторую нееоднозначнсоть

//protocol Building {
//    associatedtype Identifier
//    var uid: Identifier { get set }
//}
//
//func getSelf<T> (_ object: T) -> T where T: Building{
//    return object
//}
//
//struct Cottage: Building {
//    var uid: Int
//}
//
//getSelf(Cottage(uid: 83))



//protocol Vehicle {
//    associatedtype Identifier
//    var id: Identifier { get set }
//}
//
//protocol VehicleFactory {
//    associatedtype VehicleType
//    func makeVehicle() -> VehicleType
//}
//
//struct Car: Vehicle {
//    var id: UInt
//}
//
//struct Track: Vehicle {
//    var id: UUID
//}
//
//struct CarFactory: VehicleFactory {
//    func makeVehicle() -> some Shape {
//        return Square(id: 0)
//    }
//
//    func makeVehicle
//}
//
//SquareGenerator().makeShape()
