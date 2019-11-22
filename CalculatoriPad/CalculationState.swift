//
//  CalculationState.swift
//  CalculatoriPad
//
//  Created by daniel d4 on 15/11/2019.
//  Copyright © 2019 daniel d4. All rights reserved.
//

import SwiftUI

struct CalculationState {
    
    var currentNumber: Double = 0
    
    var storedNumber: Double?
    var storeAction: ActionView.Action?
    
   mutating func appendNumber(_ number: Double) {
        if number.truncatingRemainder(dividingBy: 1) == 0 && currentNumber.truncatingRemainder(dividingBy: 1) == 0 {
            currentNumber = 10 * currentNumber + number
        }else{
            currentNumber = number
    }
    
    }
    
    
}

//struct CalculationState_Previews: PreviewProvider {
//    static var previews: some View {
//        CalculationState()
//    }
//}
