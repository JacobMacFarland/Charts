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
    var totalSum = Double()
    var runningSum = Double()
    
    /*override init() {
        super.init()
    }*/
    

    
    public init(radius: Double, x: Double, y: Double, data: [Double], colors: [UIColor], lineWidth: Double) {
        super.init()

        totalSum = data.reduce(0, +)
        var startAngle: CGFloat = CGFloat(0).radians()
        
        for (index, color) in colors.enumerated() {
            
            let piePath = UIBezierPath()
            let center = CGPoint(x: x, y: y)

            runningSum = runningSum + data[index]
            
            let endAngle =  CGFloat(runningSum / totalSum * 360.0).radians()
            
            piePath.move(to: center)
            piePath.addArc(withCenter: center,
                           radius: CGFloat(radius),
                           startAngle: startAngle,
                           endAngle: endAngle,
                           clockwise: true)
            piePath.close()
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = piePath.cgPath
            shapeLayer.strokeColor = UIColor.white.cgColor
            shapeLayer.fillColor = color.cgColor
            shapeLayer.lineWidth = CGFloat(lineWidth)
            
            self.layer.addSublayer(shapeLayer)
            
            startAngle = endAngle
        }
    }
}

extension CGFloat {
    func radians() -> CGFloat {
        let b = CGFloat(Double.pi) * (self/180)
        return b
    }
}
