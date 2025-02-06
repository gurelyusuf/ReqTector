//
//  RequestModel.swift
//  Reqtector
//
//  Created by Yusuf Gürel on 6.02.2025.
//

struct Request: Identifiable {
    let id: Int
    let time: String
    let url: String
    let client: String
    let method: String
    let code: String
    let status: String
    let duration: String
    let response: String
}
