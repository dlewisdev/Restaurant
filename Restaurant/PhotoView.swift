//
//  PhotoView.swift
//  Restaurant
//
//  Created by Danielle Lewis on 12/11/23.
//

import SwiftUI

struct PhotoView: View {
    @Binding var photo: String
    @Binding var sheetVisible: Bool
    
    var body: some View {
        ZStack {
            Image(photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        sheetVisible = false
                    } label: {
                        Image(systemName: "x.circle")
                            .scaleEffect(2)
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                Spacer()
            }
            
        }
    }
       
    
}

#Preview {
    PhotoView(photo: .constant("gallery1"), sheetVisible: .constant(true))
}
