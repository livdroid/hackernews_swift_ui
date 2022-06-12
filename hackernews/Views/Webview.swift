//
//  Webview.swift
//  hackernews
//
//  Created by olivia on 12/06/2022.
//

import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> Webview.UIViewType{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Webview>) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
