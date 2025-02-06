//
//  RequestTable.swift
//  Reqtector
//
//  Created by Yusuf Gürel on 6.02.2025.
//

import SwiftUI

struct RequestTable: View {
    @Binding var selectedRequestID: Int?
    let requests: [Request]
    
    var body: some View {
        Table(requests, selection: $selectedRequestID) {
            TableColumn("Time") { request in Text(request.time) }
            TableColumn("URL") { request in Text(request.url) }
            TableColumn("ID") { request in Text("\(request.id)") }
            TableColumn("Client") { request in Text(request.client) }
            TableColumn("Method") { request in Text(request.method) }
            TableColumn("Code") { request in Text(request.code) }
            TableColumn("Status") { request in Text(request.status) }
            TableColumn("Duration") { request in Text(request.duration) }
            TableColumn("Response") { request in Text(request.response) }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
