//
//  DonutChartView.swift
//  Charts
//
//  Created by Jacob MacFarland on 12/29/19.
//  Copyright © 2019 Jacob MacFarland. All rights reserved.
//

import Foundation
import UIKit

class DonutChartView: PieChartView {
    public init(radius: Double, x: Double, y: Double, data: [Double], colors: [UIColor], lineWidth: Double, innerRadius: Double) {
        super.init(radius: radius, x: x, y: y, data: data, colors: colors, lineWidth: lineWidth)
        
        
        let donutPath = UIBezierPath(arcCenter: CGPoint(x: x, y: y),
                                     radius: CGFloat(innerRadius),
                                     startAngle: CGFloat(0).radians(),
                                     endAngle: CGFloat(360).radians(),
                                     clockwise: true)
        
        let donutLayer = CAShapeLayer()
        donutLayer.path = donutPath.cgPath
        donutLayer.strokeColor = UIColor.white.cgColor
        donutLayer.fillColor = UIColor.white.cgColor
        donutLayer.lineWidth = CGFloat(lineWidth)
        
        self.layer.addSublayer(donutLayer)
        
    }
}
