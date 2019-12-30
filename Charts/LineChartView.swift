//
//  LineChartView.swift
//  Charts
//
//  Created by Jacob MacFarland on 12/30/19.
//  Copyright © 2019 Jacob MacFarland. All rights reserved.
//

import UIKit
import Foundation

class LineChartView: BaseView {
    public init (x: Double, y: Double, height: Double, width: Double, data: [Double]) {
        super.init()
        
        let numYTicks = 5
        let numXTicks = 10
        
        let mainYPath = UIBezierPath(rect: CGRect(x: x, y: y, width: 1, height: height))
        let mainYLayer = CAShapeLayer()
        mainYLayer.path = mainYPath.cgPath
        mainYLayer.strokeColor = UIColor.black.cgColor
        mainYLayer.fillColor = UIColor.black.cgColor
        
        let mainXPath = UIBezierPath(rect: CGRect(x: x, y: y + height, width: width, height: 1))
        let mainXLayer = CAShapeLayer()
        mainXLayer.path = mainXPath.cgPath
        mainXLayer.strokeColor = UIColor.black.cgColor
        mainXLayer.fillColor = UIColor.black.cgColor
        
        
        for i in 0...numYTicks {
            let currYLevel = y + Double(i) / Double(numYTicks) * height
            let yTickPath = UIBezierPath(rect: CGRect(x: x - 5, y: currYLevel, width: 5, height: 1))
            
            let yTickLayer = CAShapeLayer()
            yTickLayer.path = yTickPath.cgPath
            yTickLayer.strokeColor = UIColor.black.cgColor
            yTickLayer.fillColor = UIColor.black.cgColor
            self.layer.addSublayer(yTickLayer)
        }
        
        for i in 0...numXTicks {
            let currXLevel = x + Double(i) / Double(numXTicks) * width
            let xTickPath = UIBezierPath(rect: CGRect(x: currXLevel, y: y + height, width: 1, height: 5))
            
            let xTickLayer = CAShapeLayer()
            xTickLayer.path = xTickPath.cgPath
            xTickLayer.strokeColor = UIColor.black.cgColor
            xTickLayer.fillColor = UIColor.black.cgColor
            self.layer.addSublayer(xTickLayer)
        }
    
        self.layer.addSublayer(mainYLayer)
        self.layer.addSublayer(mainXLayer)
        
    }
}
