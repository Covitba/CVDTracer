//
//  NewInteractionModel.swift
//  AndesUI
//
//  Created by Segundo Fariña on 31/08/2020.
//

import Foundation

protocol NewInteractionModel {
    
    func getParticipants() -> [ParticipantModel]
    
    func submit(interaction: InteractionModel)
}
