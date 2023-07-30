//
//  SudzyView.swift
//  Mod5_Lesson7_WKWebView
//
//  Created by Chuck Belcher on 7/29/23.
//

import SwiftUI
import WebKit

struct SudzyView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> some UIView {
        
        let webView = WKWebView()
        let request = URLRequest(url: url)
        
        webView.load(request)
        return webView
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
       return
    }
    
    
}



