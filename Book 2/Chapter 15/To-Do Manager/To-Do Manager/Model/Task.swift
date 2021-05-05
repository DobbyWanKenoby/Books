import Foundation

// Тип задачи
enum TaskPriority  {
    // обычная
    case normal
    // важная
    case important
}

// Состояние задачи
enum TaskStatus: Int {
    // текущая/запланированная
    case planned
    // завершенная
    case completed
}

// Требования к типу, описывающему сущность "Задача"
protocol TaskProtocol {
    var title: String { get set }
    var type: TaskPriority  { get set }
    var status: TaskStatus { get set }
}

// Сущность "Задача"
struct Task: TaskProtocol {
    var title: String
    var type: TaskPriority
    var status: TaskStatus
}
