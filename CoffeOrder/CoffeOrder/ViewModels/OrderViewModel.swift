//
//  OrderViewModel.swift
//  CoffeOrder
//
//  Created by Compro on 5.04.2023.
//

import Foundation
import UIKit

class OrderListViewModel {
    var ordersViewModel : [OrderViewModel]
    
    init()
    {
        self.ordersViewModel = [OrderViewModel]()
    }
    
}

extension OrderListViewModel {
    
    func orderViewModel(at index : Int) -> OrderViewModel {
        return self.ordersViewModel[index]
    }
    
}


struct OrderViewModel
{
    let order: Order
    
}

extension OrderViewModel {
    
    var name : String {
        return self.order.name
    }
    
    var email : String {
        return self.order.email
    }
    
    var type:String {
        self.order.type.rawValue.capitalized
    }
    
    var size : String {
        return self.order.size.rawValue.capitalized
    }
    
}
