//
//  BaseGraphView.swift
//  Charts
//
//  Created by Jacob MacFarland on 12/31/19.
//  Copyright © 2019 Jacob MacFarland. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

class BaseGraphView: BaseView {
    
    let graphColor = UIColor.init(rgb: 0xE5E5E5).cgColor
    let numYTicks = 4
    let numXTicks = 11
    var height, width, x, y: Double
    
    private var context : CGContext?
    
    
    public init(x: Double, y: Double, width: Double,
                height: Double, axesColor: CGColor,
                numYTicks: Int, numXTicks: Int, yTickNames: [String],
                xTickNames: [String]) {
        
        // Recently Added code
        self.height = height
        self.width = width
        self.x = x
        self.y = y
        // --------------------
        
        super.init()
        
        /*let yAxisPath = UIBezierPath(rect: CGRect(x: x, y: y, width: 1, height: height))
        
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
        
        for i in 0...numYTicks {
            let currYLevel = y + Double(i) / Double(numYTicks) * height
            let yTickPath = UIBezierPath(rect: CGRect(x: x, y: currYLevel, width: width, height: 1))
            
            let yTickLayer = CAShapeLayer()
            yTickLayer.path = yTickPath.cgPath
            yTickLayer.strokeColor = graphColor
            yTickLayer.fillColor = graphColor
            
            let yTickName = CATextLayer()
            // yTickName.string = data[numYTicks - i]
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
            // xtickName.string = months[i]
            xtickName.fontSize = CGFloat(14)
            xtickName.foregroundColor = UIColor.darkGray.cgColor
            xtickName.alignmentMode = CATextLayerAlignmentMode.center
            xtickName.frame = CGRect(x: currXLevel - 25.0 / 2.0, y: y + height + 18, width: 25, height: 20)
            
            self.layer.addSublayer(xTickLayer)
            self.layer.addSublayer(xtickName)
        }*/
    }
    
    /**
     * Draw graph major axes with tick marks and labels.
     *
     */
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        context = UIGraphicsGetCurrentContext()
        
        // let yAxisPath = UIBezierPath(rect: CGRect(x: x, y: y, width: 1, height: height))
        let yAxisPath = CGMutablePath()
        
        yAxisPath.move(to: CGPoint(x: self.x, y: self.y))
        yAxisPath.addLine(to: CGPoint(x: self.x, y: self.y + self.height))
        context!.addPath(yAxisPath)
        context!.setStrokeColor(UIColor.gray.cgColor)
        context!.strokePath()
        
        let yAxisLayer = CAShapeLayer()
        // yAxisLayer.path = yAxisPath.cgPath
        yAxisLayer.strokeColor = graphColor
        yAxisLayer.fillColor = graphColor
    }
}
