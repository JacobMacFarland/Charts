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
        
        self.layer.addSublayer(mainYLayer)
        self.layer.addSublayer(mainXLayer)
        
    }
}
