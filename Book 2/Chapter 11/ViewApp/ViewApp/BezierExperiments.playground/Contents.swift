//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        
        // создаем кривые на сцене
        createBezier(on: view)
    }
    
    private func createBezier(on view: UIView) {
        let shapeLayer = CAShapeLayer()
        view.layer.addSublayer(shapeLayer)

        shapeLayer.strokeColor = UIColor.gray.cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.fillColor = UIColor.green.cgColor

        shapeLayer.path = getPath().cgPath
    }
    
    private func getPath() -> UIBezierPath{
        let path = UIBezierPath()
        
        // первый треугольник
        path.move(to: CGPoint(x: 50, y: 50))
        path.addLine(to: CGPoint(x: 150, y: 50))
        path.addLine(to: CGPoint(x: 150, y: 150))
        path.close()
        
        // второй треугольник
        path.move(to: CGPoint(x: 50, y: 70))
        path.addLine(to: CGPoint(x: 150, y: 170))
        path.addLine(to: CGPoint(x: 50, y: 170))
        path.close()
        
        return path
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
