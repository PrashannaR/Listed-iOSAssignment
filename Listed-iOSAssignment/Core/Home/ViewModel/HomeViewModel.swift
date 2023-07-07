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
    
    //scrollview item
    @Published var scrollItems : [ScrollItem] = [
        ScrollItem(id: 1, image: "click", title: "123", body: "Today's clicks"),
        ScrollItem(id: 2, image: "location", title: "Ahemdabad", body: "Top Location"),
        ScrollItem(id: 3, image: "globe", title: "Instagram", body: "Top source"),
        ScrollItem(id: 4, image: "time", title: "11:00 - 12:00", body: "Best Time"),
    ]
    
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
