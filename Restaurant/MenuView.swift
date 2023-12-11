//
//  MenuView.swift
//  Restaurant
//
//  Created by Danielle Lewis on 12/11/23.
//

import SwiftUI

struct MenuView: View {
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    
    var body: some View {
        VStack{
            ForEach(menuItems) { item in
                MenuListRow(item: item)
            }
        }
        .onAppear {
            menuItems = dataService.getData()
        }
    }
}


#Preview {
    MenuView()
}
