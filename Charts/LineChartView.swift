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
        
        let graphColor = UIColor.init(rgb: 0xE5E5E5).cgColor
        
        let numYTicks = 5
        let numXTicks = 11
        
        let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let data = [0]
        
        let mainYPath = UIBezierPath(rect: CGRect(x: x, y: y, width: 1, height: height))
        let mainYLayer = CAShapeLayer()
        mainYLayer.path = mainYPath.cgPath
        mainYLayer.strokeColor = graphColor
        mainYLayer.fillColor = graphColor
        
        let mainXPath = UIBezierPath(rect: CGRect(x: x, y: y + height, width: width, height: 1))
        let mainXLayer = CAShapeLayer()
        mainXLayer.path = mainXPath.cgPath
        mainXLayer.strokeColor = graphColor
        mainXLayer.fillColor = graphColor
        
        
        for i in 0...numYTicks {
            let currYLevel = y + Double(i) / Double(numYTicks) * height
            // let yTickPath = UIBezierPath(rect: CGRect(x: x - 5, y: currYLevel, width: 5, height: 1))
            let yTickPath = UIBezierPath(rect: CGRect(x: x, y: currYLevel, width: width, height: 1))

            let yTickLayer = CAShapeLayer()
            yTickLayer.path = yTickPath.cgPath
            yTickLayer.strokeColor = graphColor
            yTickLayer.fillColor = graphColor
            
            let yTickName = CATextLayer()
            yTickName.string = data[
            
            self.layer.addSublayer(yTickLayer)
        }
        
        for i in 0...numXTicks {
            let currXLevel = x + Double(i) / Double(numXTicks) * width
            let xTickPath = UIBezierPath(rect: CGRect(x: currXLevel, y: y + height, width: 1, height: 5))
            
            let xTickLayer = CAShapeLayer()
            xTickLayer.path = xTickPath.cgPath
            xTickLayer.strokeColor = graphColor
            xTickLayer.fillColor = graphColor
            
            let xtickName = CATextLayer()
            xtickName.string = months[i]
            xtickName.fontSize = CGFloat(10)
            xtickName.foregroundColor = UIColor.black.cgColor
            xtickName.alignmentMode = CATextLayerAlignmentMode.center
            xtickName.frame = CGRect(x: currXLevel - 25.0 / 2.0, y: y + height + 5, width: 25, height: 15)
            
            self.layer.addSublayer(xTickLayer)
            self.layer.addSublayer(xtickName)
        }
    
        self.layer.addSublayer(mainYLayer)
        self.layer.addSublayer(mainXLayer)
        
    }
}
