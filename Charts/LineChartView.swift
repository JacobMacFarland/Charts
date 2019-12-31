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
        
        let numYTicks = 4
        let numXTicks = 11
        
        let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let data = ["0", "100", "200", "300", "400"]
        let coordinates = [(x: 0, y: 75), (x: 1, y: 20),
                           (x: 2, y: 380), (x: 3, y: 215),
                           (x: 4, y: 43), (x: 5, y: 155),
                           (x: 6, y: 99), (x: 7, y: 99),
                           (x: 8, y: 300), (x: 9, y: 55),
                           (x: 10, y: 88), (x: 11, y: 125)]
        
        
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
            yTickName.string = data[numYTicks - i]
            yTickName.fontSize = CGFloat(14)
            yTickName.foregroundColor = UIColor.darkGray.cgColor
            yTickName.alignmentMode = CATextLayerAlignmentMode.center
            yTickName.frame = CGRect(x: x - 40, y: currYLevel - 20.0 / 2.0, width: 25, height: 20)
            
            self.layer.addSublayer(yTickName)
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
            xtickName.fontSize = CGFloat(14)
            xtickName.foregroundColor = UIColor.darkGray.cgColor
            xtickName.alignmentMode = CATextLayerAlignmentMode.center
            xtickName.frame = CGRect(x: currXLevel - 25.0 / 2.0, y: y + height + 18, width: 25, height: 20)
            
            self.layer.addSublayer(xTickLayer)
            self.layer.addSublayer(xtickName)
        }
        
        self.layer.addSublayer(mainYLayer)
        self.layer.addSublayer(mainXLayer)
        
        for (index, coordinate) in coordinates.enumerated() {
            
            let graphXCoord = Double(coordinate.x) / 11.0 * width + x
            let graphYCoord = Double(coordinate.y) / 400.0 * height + y
            
            print(graphXCoord)
            print(graphYCoord)
            print("----------")
            
            let dataPoint = UIBezierPath(arcCenter: CGPoint(x: graphXCoord, y: graphYCoord),
                                         radius: CGFloat(3),
                                         startAngle: CGFloat(0).radians(),
                                         endAngle: CGFloat(360).radians(),
                                         clockwise: true)
            
            let dataPointLayer = CAShapeLayer()
            dataPointLayer.path = dataPoint.cgPath
            dataPointLayer.strokeColor = UIColor.blue.cgColor
            dataPointLayer.fillColor = UIColor.blue.cgColor
            dataPointLayer.lineWidth = CGFloat(1)
            
            self.layer.addSublayer(dataPointLayer)
        }
    

        
    }
}
