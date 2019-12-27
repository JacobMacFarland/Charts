//
//  BaseView.swift
//  Charts
//
//  Created by Jacob MacFarland on 12/26/19.
//  Copyright © 2019 Jacob MacFarland. All rights reserved.
//
import UIKit

class BaseView: UIView {
    
    // This initializer hides init(frame:) from subclasses
    init() {
        super.init(frame: CGRect.zero)
    }
    
    // This attribute hides `init(coder:)` from subclasses
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }
}
