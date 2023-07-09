//
//  HomeViewModel.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 07/07/2023.
//

import Combine
import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var greetingsMessage: String = ""

    @Published var dash: Dashboard?
    @Published var dataClass: DataClass?

    @AppStorage("token") var apiToken: String?

    let token: String = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI"

    init() {
        loadData(httpMethod: "GET")
        apiToken = token
    }

    // MARK: Greetings Message

    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH"
        return formatter
    }()

    func updateGreetings() {
        let hour = Int(dateFormatter.string(from: Date())) ?? 0

        if (6 ..< 12).contains(hour) {
            greetingsMessage = "Good Morning"
        } else if (12 ..< 18).contains(hour) {
            greetingsMessage = "Good Afternoon"
        } else {
            greetingsMessage = "Good Evening"
        }
    }

    func loadData(httpMethod: String) {
        guard let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew") else { return }

        var request = URLRequest(url: url, timeoutInterval: Double.infinity)
        request.addValue(apiToken ?? "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI", forHTTPHeaderField: "Authorization")
        request.addValue("connect.sid=s%3AoxxIR5U2-ZudEhB7IKRj_a3dzqhpjPvG.ll%2FR9ONq39aDWFUP7DAXIeOfoGPb6KtaemuMuv9%2Fg6U", forHTTPHeaderField: "Cookie")

        request.httpMethod = httpMethod
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data else {
                print(String(describing: error))
                return
            }
            print(String(data: data, encoding: .utf8)!)
            do {
                let decoder = JSONDecoder()
                let dashboard = try decoder.decode(Dashboard.self, from: data)
                DispatchQueue.main.async {
                    self.dash = dashboard

                    print(self.dash ?? "aayena tero data")
                }

            } catch {
                print(error)
            }
        }

        task.resume()
    }
}
