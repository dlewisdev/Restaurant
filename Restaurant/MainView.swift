//
//  ContentView.swift
//  Restaurant
//
//  Created by Danielle Lewis on 12/11/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            MenuView()
                .tabItem {
                    VStack {
                        Image(systemName: "menucard")
                        Text("Menu")
                    }
                }
            
            AboutView()
                .tabItem {
                    VStack {
                        Image(systemName: "info.circle")
                        Text("About")
                    }
                }
            
            GalleryView()
                .tabItem {
                    VStack {
                        Image(systemName: "photo")
                        Text("Gellery")
                    }
                }
        }
    }
}

#Preview {
    MainView()
}
