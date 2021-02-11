//
//  View.swift
//  ViewApp
//
//  Created by Admin on 20.10.2020.
//

import UIKit

protocol FigureProtocol where Self: UIView {
    init(size: CGSize)
}

@IBDesignable
class Rectangle: UIView, FigureProtocol {
    
    
    @IBInspectable var aaa: Int = 0
   // var backgroundColor: UIColor? = .black
    
    func commonInit() {
        self.layer.borderColor = UIColor.green.cgColor
        self.layer.borderWidth = 5
        self.layer.backgroundColor = UIColor.black.cgColor
        self.backgroundColor = .red
        
        let view = UIView(frame: self.bounds)
        view.backgroundColor = .red
        view.layer.borderWidth = 10
        view.layer.borderColor = UIColor.red.cgColor
        self.addSubview(view)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    
    required convenience init(size: CGSize) {
        self.init(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height/2))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

@IBDesignable
class Card<T: FigureProtocol>: UIView {
    var element: T!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
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
