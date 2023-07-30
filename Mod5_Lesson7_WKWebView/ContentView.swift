//
//  ContentView.swift
//  Mod5_Lesson7_WKWebView
//
//  Created by Chuck Belcher on 7/29/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresentWebView = false
    
    var body: some View {
        VStack {
            
            Button ("Open Sudzy View") {
                isPresentWebView = true
            }
                .sheet(isPresented: $isPresentWebView) {
                    NavigationStack {
                        SudzyView(url: URL(string: "https://www.sudzypets.com")!)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationTitle("Working Web")
                            .foregroundColor(.black)
                    }
                }
            

            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
