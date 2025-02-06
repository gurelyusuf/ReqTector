//
//  RequestChartView.swift
//  Reqtector
//
//  Created by Yusuf Gürel on 6.02.2025.
//

import SwiftUI
import Charts

struct RequestChartView: View {
    let requests: [Request]

    var body: some View {
        let chartData = requests.map { request in
            (request.time, Double(request.duration.dropLast(1)) ?? 0.0) // Süreyi çevir
        }

        VStack {
            Text("Request Duration Over Time")
                .font(.headline)
                .padding(.bottom, 5)

            Chart {
                ForEach(chartData, id: \.0) { time, duration in
                    LineMark(
                        x: .value("Time", time),
                        y: .value("Duration", duration)
                    )
                }
            }
            .frame(height: 200)
        }
        .padding()
    }
}
