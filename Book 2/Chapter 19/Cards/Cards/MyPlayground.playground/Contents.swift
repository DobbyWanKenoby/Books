//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    var myView: UIView!
    
    override func loadView() {
        setupViews()
    }
    
    // настройка представлений сцены
    private func setupViews() {
        self.view = getRootView()
        let redView = getRedView()
        let greenView = getGreenView()
        //let whiteView = getWhiteView()
        
        redView.transform = CGAffineTransform(rotationAngle: .pi/3)
        
        set(view: greenView, toCenterOfView: redView)
        //whiteView.center = greenView.center
        
        
        
        self.view.addSubview( redView )
        redView.addSubview( greenView )
        //redView.addSubview( whiteView )
        
        // добавим розовое представление
        let pinkView = getPinkView()
        self.view.addSubview(pinkView)
    }
    
    
    // создание представления розового цвета
    private func getPinkView() -> UIView {
        let viewFrame = CGRect(x: 50, y: 300, width: 100, height: 100)
        let view = UIView(frame: viewFrame)
        view.backgroundColor = .systemPink
        
        view.layer.borderWidth = 5
        view.layer.borderColor = UIColor.yellow.cgColor
        view.layer.cornerRadius = 10
        
        view.layer.shadowOpacity = 1
        view.layer.shadowRadius = 15
        view.layer.shadowOffset = CGSize(width: 10, height: 20)
        view.layer.shadowColor = UIColor.white.cgColor
        
        view.layer.opacity = 0.7
        
        // создание слоя
        let layer = CALayer()
        // изменение фонового цвета
        layer.backgroundColor = UIColor.black.cgColor
        // изменение размеров и положения
        layer.frame = CGRect(x: 10, y: 10, width: 20, height: 20)
        // изменение радиуса скругления углов
        layer.cornerRadius = 10
        // добавление в иерархию слоев
        view.layer.addSublayer(layer)
        
        return view
    }
    
    // создание представления белого цвета
    private func getWhiteView() -> UIView {
        let viewFrame = CGRect(x: 0, y: 0, width: 50, height: 50)
        let view = UIView(frame: viewFrame)
        view.backgroundColor = .white
        return view
    }
    
    // создание корневого представления
    private func getRootView() -> UIView {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }
    
    // создание красного представления
    private func getRedView() -> UIView {
        let viewFrame = CGRect(x: 50, y: 50, width: 200, height: 200)
        let view = UIView(frame: viewFrame)
        view.backgroundColor = .red
        view.clipsToBounds = true
        return view
    }
    
    // создание зеленого представления
    private func getGreenView() -> UIView {
        let viewFrame = CGRect(x: 100, y: 100, width: 180, height: 180)
        let view = UIView(frame: viewFrame)
        view.backgroundColor = .green
        return view
    }
    
    private func set(view moveView: UIView, toCenterOfView baseView: UIView){
        
        //moveView.center = CGPoint(x: baseView.bounds.midX, y: baseView.bounds.midY)
        
        //return
        
        // размеры сдвигаемого представления
        let moveViewWidth = moveView.bounds.width
        let moveViewHeight = moveView.bounds.height
        
        // размеры базового представления
        let baseViewWidth = baseView.bounds.width
        let baseViewHeight = baseView.bounds.height
        
        
        
        
        // вычисление и изменение координат
        let newXCoordinate = Int(baseViewWidth - moveViewWidth) / 2
        let newYCoordinate = Int(baseViewHeight - moveViewHeight) / 2
        moveView.frame.origin = CGPoint(x: newXCoordinate, y: newYCoordinate)
    }
    
        
        
//        // создание красного view
//        let redViewFrame = CGRect(x: 50, y: 50, width: 200, height: 200)
//        let redView = UIView(frame: redViewFrame)
//        redView.backgroundColor = .red
//        redView.clipsToBounds = true
//        view.addSubview(redView)
//
//
//        // размеры зеленого view
//        let widthGreenView = 180
//        let heightGreenView = 180
//
//        // рассчет координат view
//        let xGreenView = ( Int(redView.bounds.width) - widthGreenView) / 2
//        let yGreenView = ( Int(redView.bounds.height) - heightGreenView) / 2
//
//        let greenView = UIView(frame: CGRect(x: xGreenView, y: yGreenView, width: widthGreenView, height: heightGreenView))
//
//        greenView.backgroundColor = .green
//        redView.addSubview(greenView)
//
//        // создание белого view
//        let whiteView = UIView(frame: CGRect(x: 20, y: 20, width: 30, height: 30))
//        whiteView.backgroundColor = .white
//        whiteView.center = greenView.center
//        redView.addSubview(whiteView)
//
//        greenView.layer.cornerRadius = 20
//    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = MyViewController()

protocol FigureProtocol: UIView {
    init(size: CGSize)
}

class Rectangle: UIView, FigureProtocol {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .gray
    }
    
    required convenience init(size: CGSize) {
        self.init(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height/2))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Card<T: FigureProtocol>: UIView {
    var element: T!
    override init(frame: CGRect) {
        super.init(frame: frame)
        let width = frame.width / 2
        let height = frame.height / 2
        element = T(size: CGSize(width: width, height: height))
        element.center = self.center
        self.addSubview(element)
        self.backgroundColor = .yellow
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
