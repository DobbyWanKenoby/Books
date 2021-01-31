import PlaygroundSupport
import UIKit

// размеры прямоугольной области
let sizeOfArea = CGSize(width: 400, height: 400)
// создание экземпляра
var area = SquareArea(size: sizeOfArea, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
area.setBalls(withColors: [#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1),#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1),#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)], andRadius: 30)
// установка экземпляра в качестве текущего отображения
PlaygroundPage.current.liveView = area
