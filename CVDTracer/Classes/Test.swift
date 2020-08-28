//
//  Test.swift
//  CVDTracer
//
//  Created by Segundo Fariña on 27/08/2020.
//

import Foundation



extension UIView {
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        next?.touchesBegan(touches, with: event)
        print("Eso no hace falta")
    }
}
