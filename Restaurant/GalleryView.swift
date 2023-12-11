//
//  GalleryView.swift
//  Restaurant
//
//  Created by Danielle Lewis on 12/11/23.
//

import SwiftUI

struct GalleryView: View {
    @State var photoData = [String]()
    var dataService = DataService()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            
            GeometryReader { geo in
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(spacing: 10),
                                        GridItem(spacing: 10),
                                        GridItem(spacing: 10)],
                              spacing: 10) {
                        ForEach(photoData, id: \.self) { photo in
                            Image(photo)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (geo.size.width - 50) / 3)
                                .clipped()
                        }
                    }
                }
                .padding(.horizontal)
                .onAppear {
                    photoData = dataService.getGalleryData()
                }
            }
        }
    }
}

#Preview {
    GalleryView()
}
