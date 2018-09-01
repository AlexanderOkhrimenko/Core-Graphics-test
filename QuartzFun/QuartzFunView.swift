//
//  QuartzFunView.swift
//  QuartzFun
//
//  Created by xander on 05.11.2017.
//  Copyright © 2017 dhard. All rights reserved.
//

import UIKit

class QuartzFunView: UIView {

var a = CGFloat(0.0)
var w = CGFloat(0.0)

    let  view: UIView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 300, height: 200))
    
var fillColor = UIColor(red: 0.8, green: 0.1, blue: 0.7, alpha: 1)
var strokeColor = UIColor(red: 0.6, green: 0.0, blue: 0.5, alpha: 1)
    
 override  func draw(_ rect: CGRect) {
     //   let context = UIGraphicsGetCurrentContext()
    
    // надпись
    
    
    
    let font = UIFont(name: "Arial", size: 20.0)
    let fr = CGRect(x: 60, y: 60, width: 100, height: 30)
    let lb = UILabel(frame: fr)
    lb.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1)
    lb.text = "Core Graphics"
   // lb.font = font
    lb.adjustsFontSizeToFitWidth = true
    lb.textAlignment = NSTextAlignment.right
    
    addSubview(lb)
    
    // надпись
    
    view.alpha = 0.6
    view.backgroundColor = .magenta
    self.view.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
    addSubview(view)
    
    let rectOne: CAShapeLayer!
    rectOne = CAShapeLayer()
    rectOne.path = UIBezierPath(rect: CGRect(x: 0, y: 0, width: view.frame.width / 2, height: view.frame.height / 2)).cgPath
    rectOne.fillColor = UIColor.green.cgColor
   // rectOne.strokeStart = 0.0
   // rectOne.strokeEnd = 8.0
     view.layer.addSublayer(rectOne)
    
    
    let pathAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.path))
    pathAnimation.fromValue = rectOne.path
    pathAnimation.toValue = rectOne.path
    pathAnimation.duration = 1
    
    rectOne.add(pathAnimation, forKey: nil)
    

    // первый прямоугольник
  //  let p = UIBezierPath(rect: CGRect(x: 40, y: 40, width: 150, height: 40))
    fillColor.setFill()
 //   p.fill()
    strokeColor.setStroke()
 //   p.lineWidth = 3
 //   p.stroke()
    
    let c = UIBezierPath(roundedRect: CGRect(x: 50, y: 50, width: 200, height: 50), cornerRadius: 5.0)
    c.lineWidth = 3
    
    //animation.path = c.cgPath
    
    c.fill()
    c.stroke()

   /*     context!.setLineWidth(a)
        context!.setStrokeColor(UIColor.green.cgColor)
        context?.move(to: CGPoint(x: 0, y: 0))
        context?.addLine(to: CGPoint(x: w, y: 0))
 context?.strokePath() */
    
    }
    
}
