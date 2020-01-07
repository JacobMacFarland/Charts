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
        
        let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let data = ["0", "100", "200", "300", "400"]
        let coordinates = [(x: 0, y: 75), (x: 1, y: 20),
                           (x: 2, y: 380), (x: 3, y: 215),
                           (x: 4, y: 43), (x: 5, y: 155),
                           (x: 6, y: 99), (x: 7, y: 99),
                           (x: 8, y: 300), (x: 9, y: 55),
                           (x: 10, y: 88), (x: 11, y: 125)]

        
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
