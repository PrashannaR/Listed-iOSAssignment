//
//  HomeViewModel.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 07/07/2023.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject{
    
    @Published var greetingsMessage : String = ""
    
    private let dateFormatter : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH"
        return formatter
    }()
    
    
    func updateGreetings(){
        let hour = Int(dateFormatter.string(from: Date())) ?? 0
        
        if(6..<12).contains(hour){
            greetingsMessage = "Good Morning"
        }else if(12..<18).contains(hour){
            greetingsMessage = "Good Afternoon"
        }else{
            greetingsMessage = "Good Evening"
        }
    }
    
    
    
    
}
