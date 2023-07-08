//
//  HomeViewModel.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 07/07/2023.
//

import Foundation
import SwiftUI
import Combine

class HomeViewModel: ObservableObject{
    
    @Published var greetingsMessage : String = ""
    
    @Published var dash : Dashboard?
        
    private let dataService = DashboardService()
    private var cancellables = Set<AnyCancellable>()
    

    
    //scrollview item
    @Published var scrollItems : [ScrollItem] = [
        ScrollItem(id: 1, image: "click", title: "123", body: "Today's clicks"),
        ScrollItem(id: 2, image: "location", title: "Ahemdabad", body: "Top Location"),
        ScrollItem(id: 3, image: "globe", title: "Instagram", body: "Top source"),
        ScrollItem(id: 4, image: "time", title: "11:00 - 12:00", body: "Best Time"),
    ]
    
    
    //MARK: Greetings Message
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
    
    
//    //MARK: Subscriber
//    func addSubscibers(){
//        dataService.$dash
//            .sink {[weak self] returnedData in
//                self?.dash = returnedData
//            }
//            .store(in: &cancellables)
//    }

    
    

            
    
}
