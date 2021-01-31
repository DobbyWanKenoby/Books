import UIKit

protocol BallProtocol {
    init(color: UIColor, radius: Int, coordinates: (x: Int, y: Int))
}

public class Ball: UIView, BallProtocol {
    required public init(color: UIColor, radius: Int, coordinates: (x:Int, y: Int)) {
        // создание графического прямоугольника
        super.init(frame:
            CGRect(x: coordinates.x,
                   y: coordinates.y,
                   width: radius * 2,
                   height: radius * 2))
        // скругление углов
        self.layer.cornerRadius = self.bounds.width / 2.0
        // изменение цвета фона
        self.backgroundColor = color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

protocol SquareAreaProtocol {
    init(size: CGSize, color: UIColor)
    // установить шарики в область
    func setBalls(withColors: [UIColor], andRadius: Int)
}

public class SquareArea: UIView, SquareAreaProtocol {
    // коллекция всех шариков
    private var balls: [Ball] = []
    // аниматор графических объектов
    private var animator: UIDynamicAnimator?
    // обработчик перемещений объектов
    private var snapBehavior: UISnapBehavior?
    // обработчик столкновений
    private var collisionBehavior: UICollisionBehavior
    
    required public init(size: CGSize, color: UIColor) {
        // создание обработчика столкновений
        collisionBehavior = UICollisionBehavior(items: [])
        // строим прямоугольную графическую область
        super.init(frame:
            CGRect(x: 0, y: 0, width: size.width, height: size.height))
        // изменяем цвет фона
        self.backgroundColor = color
        // указываем границы прямоугольной области
        // как объекты взаимодействия
        // чтобы об них могли ударяться шарики
        collisionBehavior.setTranslatesReferenceBoundsIntoBoundary(with: UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1))
        // подключаем аниматор с указанием на сам класс
        animator = UIDynamicAnimator(referenceView: self)
        // подключаем к аниматору обработчик столкновений
        animator?.addBehavior(collisionBehavior)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func setBalls(withColors ballsColor: [UIColor], andRadius radius: Int) {
        // перебираем переданные цвета
        // один цвет – один шарик
        for (index, oneBallColor) in ballsColor.enumerated() {
            // рассчитываем координаты левого верхнего угла шарика
            let coordinateX = 10 + (2 * radius) * index
            let coordinateY = 10 + (2 * radius) * index
            // создаем экземпляр сущности "Шарик"
            let ball = Ball(color: oneBallColor,
                            radius: radius,
                            coordinates: (x: coordinateX, y: coordinateY))
            // добавляем шарик в текущее отображение (в состав прямоугольной площадки)
            self.addSubview(ball)
            // добавляем шарик в коллекцию шариков
            self.balls.append(ball)
            // добавляем шарик в обработчик столкновений
            collisionBehavior.addItem(ball)
        }
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchLocation = touch.location( in: self )
            for ball in balls {
                if (ball.frame.contains( touchLocation )) {
                    snapBehavior = UISnapBehavior(item: ball, snapTo: touchLocation)
                    snapBehavior?.damping = 0.5
                    animator?.addBehavior(snapBehavior!)
                }
            }
        }
    }
    
    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchLocation = touch.location( in: self )
            if let snapBehavior = snapBehavior {
                snapBehavior.snapPoint = touchLocation
            }
        }
    }
    
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let snapBehavior = snapBehavior {
            animator?.removeBehavior(snapBehavior)
        }
        snapBehavior = nil
    }

}
