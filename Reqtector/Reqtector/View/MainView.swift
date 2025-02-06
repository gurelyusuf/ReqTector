//
//  ContentView.swift
//  Reqtector
//
//  Created by Yusuf Gürel on 6.02.2025.
//

import SwiftUI

struct ReqtectorView: View {
    @State private var sideBarVisibility: NavigationSplitViewVisibility = .automatic
    @State private var selectedRequestID: Int? = nil
    private let requests = [
        Request(id: 1, time: "14:23:29", url: "https://example.com/api/1", client: "Chrome", method: "GET", code: "200", status: "OK", duration: "1.03s", response: "25.7 KB"),
        Request(id: 2, time: "14:24:30", url: "https://example.com/api/2", client: "Firefox", method: "POST", code: "404", status: "Not Found", duration: "0.98s", response: "15.3 KB"),
        Request(id: 3, time: "14:24:30", url: "https://example.com/api/2", client: "Firefox", method: "POST", code: "404", status: "Not Found", duration: "0.98s", response: "15.3 KB"),
        Request(id: 4, time: "14:24:30", url: "https://example.com/api/2", client: "Firefox", method: "POST", code: "404", status: "Not Found", duration: "0.98s", response: "15.3 KB"),
        Request(id: 5, time: "14:24:30", url: "https://example.com/api/2", client: "Firefox", method: "POST", code: "404", status: "Not Found", duration: "0.98s", response: "15.3 KB")
    ]
    
    var body: some View {
        NavigationSplitView(columnVisibility: $sideBarVisibility) {
            Sidebar()
        } content: {
            VStack {
                MainContent(selectedRequestID: $selectedRequestID, requests: requests)
                    .frame(maxWidth: .infinity, maxHeight: .infinity) // Üst bölüm
                
                Divider()
                
                if let selectedID = selectedRequestID,
                   let selectedRequest = requests.first(where: { $0.id == selectedID }) {
                    RequestDetailView(request: selectedRequest)
                        
                } else {
                    Text("Select a request to see details")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .padding()
        } detail: {
            RequestChartView(requests: requests)
        }
    }
}

struct MainContent: View {
    @Binding var selectedRequestID: Int?
    let requests: [Request]
    
    var body: some View {
        VStack {
            RequestTable(selectedRequestID: $selectedRequestID, requests: requests)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
