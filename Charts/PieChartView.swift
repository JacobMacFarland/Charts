//
//  PieChartView.swift
//  Charts
//
//  Created by Jacob MacFarland on 12/25/19.
//  Copyright © 2019 Jacob MacFarland. All rights reserved.
//

import Foundation
import UIKit

class PieChartView: BaseView {
    
    var piePath = UIBezierPath()
    let pieCenter = CGPoint()
    let pieRadius = CGFloat()
    //let totalSum = Double()
    let runningSum = Double()
    
    /*override init() {
        super.init()
    }*/
    

    
    public init(radius: Double/*, x: Double, y: Double, data: [Double], colors: [UIColor]*/) {
        super.init()
        let pieColors = [UIColor.red, UIColor.green, UIColor.gray, UIColor.blue, UIColor.black, UIColor.purple, UIColor.yellow]
        let data = [10.0, 20.0, 30.0, 40.0, 50.0, 60.0, 70.0]
        var totalSum = data.reduce(0, +)
        print(totalSum)
        var startAngle: CGFloat = 0
        
        
        for (index, color) in pieColors.enumerated() {
            
            let piePath = UIBezierPath()
            let center = CGPoint(x: 135, y: 330)
            var endAngle: CGFloat = 360
            
            if (index <= 5) {
                endAngle = CGFloat((Double(data[index + 1])) / 7.0 * 360.0).radians()
            }
            
            print(startAngle)
            print(endAngle)
            print("--------")
            let radius = CGFloat(150)
            
            piePath.move(to: center)
            piePath.addArc(withCenter: center,
                           radius: radius,
                           startAngle: startAngle,
                           endAngle: endAngle,
                           clockwise: true)
            piePath.close()
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = piePath.cgPath
            shapeLayer.strokeColor = UIColor.white.cgColor
            shapeLayer.fillColor = pieColors[index].cgColor
            shapeLayer.lineWidth = 4
            
            self.layer.addSublayer(shapeLayer)
            
            startAngle = CGFloat(Double(data[index]) / totalSum  * 360.0).radians()

        }
    }
}

extension CGFloat {
    func radians() -> CGFloat {
        let b = CGFloat(Double.pi) * (self/180)
        return b
    }
}
