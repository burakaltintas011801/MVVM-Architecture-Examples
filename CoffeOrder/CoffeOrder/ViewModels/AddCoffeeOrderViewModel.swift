//
//  AddCoffeeOrderViewModel.swift
//  CoffeOrder
//
//  Created by Compro on 5.04.2023.
//

import Foundation
import UIKit


struct AddCoffeeOrderViewModel
{
    var name: String?
    var email: String?
    
    var selectedType : String?
    var selectedSize : String?
    
    var types: [String] {
        return CoffeeType.allCases.map { $0.rawValue.capitalized }
    }
    var sizes : [String] {
        return CoffeeSize.allCases.map { $0.rawValue.capitalized }
    }
    
}
