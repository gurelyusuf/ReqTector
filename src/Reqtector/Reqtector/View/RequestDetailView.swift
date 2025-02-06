//
//  RequestDetailView.swift
//  Reqtector
//
//  Created by Yusuf Gürel on 6.02.2025.
//

import SwiftUI

struct RequestDetailView: View {
    let request: Request
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Request Details for ID: \(request.id)")
                .font(.headline)
                .padding(.top, 8)
            
            TabView {
                ScrollView {
                    Text("Request Field: {\"key\": \"value\"}")
                        .font(.system(.body, design: .monospaced))
                        .padding()
                }
                .tabItem { Text("Request") }
                
                ScrollView {
                    Text("Response Field: {\"data\": [1, 2, 3]}")
                        .font(.system(.body, design: .monospaced))
                        .padding()
                }
                .tabItem { Text("Response") }
                
                ScrollView {
                    Text("Formatted Request: GET /api/example")
                        .font(.system(.body, design: .monospaced))
                        .padding()
                }
                .tabItem { Text("Formatted") }
            }
        }
        
        .background(Color.gray.opacity(0.05))
    }
}
