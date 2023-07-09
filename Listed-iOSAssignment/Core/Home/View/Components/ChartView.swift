//
//  ChartView.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 09/07/2023.
//

import SwiftUI
/*
struct ChartView: View {
    
    private var data : [String : Int] = [:]
    private var maxY : Int
    private var minY : Int
    
    private var startDate : Date?
    private var endDate : Date?
    var str = ""
    
    init(dash:Dashboard){
        data = dash.data?.overallurlChart ?? DeveloperPreview.instance.chartData
        maxY = data.values.max() ?? 0
        minY = data.values.min() ?? 0
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let dates = data.keys.compactMap { dateFormatter.date(from: $0) }
        
        guard let minDate = dates.min(), let maxDate = dates.max() else {
            return
        }
        
        startDate = minDate
        endDate = maxDate
        
    }
    
    var body: some View {
        Text(str)
    }
    

    
}
*/

struct ChartView: View {
    private var data: [String: Int] = [:]
    private var maxY: Int = 0
    private var minY: Int = 0

    private var startDate: Date?
    private var endDate: Date?
    private var values: [Int] {
        Array(data.values)
    }

    init(dash: Dashboard) {
        data = dash.data?.overallurlChart ?? DeveloperPreview.instance.chartData
        maxY = values.max() ?? 0
        minY = values.min() ?? 0

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"

        let dates = data.keys.compactMap { dateFormatter.date(from: $0) }

        guard let minDate = dates.min(), let maxDate = dates.max() else {
            return
        }

        startDate = minDate
        endDate = maxDate
    }

    var body: some View {
        VStack {
            chartView
                .frame(height: 100)
                .background{
                    chartBackground
                }
            
        }
    }
    


    
}


struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(dash: dev.dashboard)
    }
}


extension ChartView{
    private var chartView: some View {
        GeometryReader { geometry in
            Path { path in
                let xStep = geometry.size.width / CGFloat(data.count - 1)
                let yStep = geometry.size.height / CGFloat(maxY - minY)

                for (index, value) in values.enumerated() {
                    let xPosition = CGFloat(index) * xStep
                    let yPosition = geometry.size.height - CGFloat(value - minY) * yStep

                    if index == 0 {
                        path.move(to: CGPoint(x: xPosition, y: yPosition))
                    } else {
                        path.addLine(to: CGPoint(x: xPosition, y: yPosition))
                    }
                }
            }
            .stroke(Color.theme.accent, style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
            .shadow(color: Color.theme.accent, radius: 10, x: 0, y: 10)
            .shadow(color: Color.theme.accent.opacity(0.5), radius: 10, x: 0, y: 20)
            .shadow(color: Color.theme.accent.opacity(0.2), radius: 10, x: 0, y: 30)
            .shadow(color: Color.theme.accent.opacity(0.1), radius: 10, x: 0, y: 40)
        }
    }
    
    
    private var chartBackground: some View {
        VStack {
            Divider()
            Spacer()
            Divider()
            Spacer()
            Divider()
        }.overlay{
            HStack{
                Divider()
                    .frame(height: 200)
                
                Spacer()
                
                Divider()
                    .frame(height: 200)
                
                Spacer()
                
                Divider()
                    .frame(height: 200)
                
                Spacer()
                
                Divider()
                    .frame(height: 200)
                
                Spacer()
                
                Divider()
                    .frame(height: 200)
                
                Spacer()
            }
        }
    }
    
}
