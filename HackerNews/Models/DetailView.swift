//
//  DetailView.swift
//  HackerNews
//
//  Created by Hamed Hashemi on 7/10/23.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        SwiftUIWebView(pageUrl: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

struct SwiftUIWebView: UIViewRepresentable {
    typealias UIViewType = WKWebView

    let pageUrl: String?
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrl = pageUrl {
            uiView.load(URLRequest(url: URL(string: safeUrl)!))
        }
    }
}

