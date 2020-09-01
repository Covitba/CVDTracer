//
//  NewInteractionViewModel.swift
//  AndesUI
//
//  Created by Segundo Fariña on 31/08/2020.
//

import Foundation


protocol NewInteractionViewModel {
    
    var viewDelegate: NewInteractionViewDelegate? {get set}
//    var model: NewInteractionModel {get set}
    var date: String {get set}
    var location: String {get set}
    var participants: [String] {get set}
    

    
}

protocol NewInteractionViewDelegate {
    func refreshUI()
}
