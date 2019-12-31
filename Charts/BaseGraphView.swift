//
//  BaseGraphView.swift
//  Charts
//
//  Created by Jacob MacFarland on 12/31/19.
//  Copyright © 2019 Jacob MacFarland. All rights reserved.
//

import Foundation
import UIKit

class BaseGraphView: BaseView {
    public init(x: Double, y: Double, width: Double, height: Double, axesColor: CGColor) {
        super.init()
        
        let yAxisPath = UIBezierPath(rect: CGRect(x: x, y: y, width: 1, height: height))
        
        let yAxisLayer = CAShapeLayer()
        yAxisLayer.path = yAxisPath.cgPath
        yAxisLayer.strokeColor = axesColor
        yAxisLayer.fillColor = axesColor
        
        let xAxisPath = UIBezierPath(rect: CGRect(x: x, y: y + height, width: width, height: 1))
        
        let xAxisLayer = CAShapeLayer()
        xAxisLayer.path = xAxisPath.cgPath
        xAxisLayer.strokeColor = axesColor
        xAxisLayer.fillColor = axesColor
        
        self.layer.addSublayer(yAxisLayer)
        self.layer.addSublayer(xAxisLayer)
    }
}
