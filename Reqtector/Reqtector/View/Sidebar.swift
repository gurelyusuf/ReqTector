//
//  Sidebar.swift
//  Reqtector
//
//  Created by Yusuf Gürel on 6.02.2025.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        List {
            Section(header: Text("Pinned")) {
                ForEach(0..<3) { index in
                    Text("Pinned Item \(index + 1)")
                }
            }
            Section(header: Text("Saved")) {
                ForEach(0..<3) { index in
                    Text("Saved Item \(index + 1)")
                }
            }
            Section(header: Text("Apps")) {
                ForEach(0..<3) { index in
                    Text("App \(index + 1)")
                }
            }
            Section(header: Text("Domains")) {
                ForEach(0..<3) { index in
                    Text("Domain \(index + 1)")
                }
            }
        }
        .listStyle(SidebarListStyle())
        .frame(minWidth: 200)
    }
}
