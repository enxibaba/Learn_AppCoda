//
// Created by 周佳 on 2019-01-12.
// Copyright (c) 2019 Razeware LLC. All rights reserved.
//

import Foundation

extension DispatchTime: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self = DispatchTime.now() + .seconds(value)
    }
}

extension DispatchTime: ExpressibleByFloatLiteral {
    public init(floatLiteral value: Double) {
        self = DispatchTime.now() + .microseconds(Int(value * 1000))
    }
}