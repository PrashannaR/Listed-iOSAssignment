//
//  DashboardService.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 09/07/2023.
//

import Foundation
import Combine

class DashboardService {
    
    @Published var dash : Dashboard?
    var subscription : AnyCancellable?
    
    
    init(){
        loadData(httpMethod: "GET")
    }
    
    
    func loadData(httpMethod: String){
        
        guard let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew") else {return}
        
        var request = URLRequest(url: url,timeoutInterval: Double.infinity)
        request.addValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI", forHTTPHeaderField: "Authorization")
        request.addValue("connect.sid=s%3AoxxIR5U2-ZudEhB7IKRj_a3dzqhpjPvG.ll%2FR9ONq39aDWFUP7DAXIeOfoGPb6KtaemuMuv9%2Fg6U", forHTTPHeaderField: "Cookie")

        request.httpMethod = httpMethod

                let task = URLSession.shared.dataTask(with: request) { data, response, error in
                  guard let data = data else {
                    print(String(describing: error))
                    return
                  }
                    print("Response Data: ")
                  print(String(data: data, encoding: .utf8)!)
                }
        
                task.resume()

    }
    
    
    
    
    
    /*
    func apiCall(httpMethod: String){
        
        guard let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew") else {return}
        
        var request = URLRequest(url: url,timeoutInterval: Double.infinity)
        
        request.addValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI", forHTTPHeaderField: "Authorization")
        
        request.addValue("connect.sid=s%3AoxxIR5U2-ZudEhB7IKRj_a3dzqhpjPvG.ll%2FR9ONq39aDWFUP7DAXIeOfoGPb6KtaemuMuv9%2Fg6U", forHTTPHeaderField: "Cookie")

        request.httpMethod = httpMethod

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            return
          }
          print(String(data: data, encoding: .utf8)!)
        }

        task.resume()
    }
    
    */
    
}
