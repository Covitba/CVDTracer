//
//  NewInteractionViewModelImpl.swift
//  CVDTracer
//
//  Created by Segundo Fariña on 01/09/2020.
//

import Foundation

class NewInteractionViewModelImpl: NewInteractionViewModel {
    var viewDelegate: NewInteractionViewDelegate?
    
//    var model: NewInteractionModel
    
    var date: String
    
    var location: String {
        didSet {
            print(location)
        }
    }
    
    
    var participants: [String]
    
    init() {
//        model =  NewInteractionModel()
        date = ""
        location = ""
        participants = []
    }
}
