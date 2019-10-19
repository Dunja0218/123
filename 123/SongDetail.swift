//
//  SongDetail.swift
//  123
//
//  Created by Dunja on 2019/10/14.
//  Copyright © 2019 Starmy. All rights reserved.
//

import SwiftUI

struct SongDetail: View {
    var song: Song
    var body: some View {
        NavigationView{
        VStack {
            Image(song.name)
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 300).clipped()
            
            ScrollView(.vertical){
                    Text(song.lyrics)
                        .padding()
                Spacer()
            }
            .padding()
            Spacer()
        }
        .background(Color.orange)
        .cornerRadius(20)
        .shadow(radius: 5)
        }
        .navigationBarTitle(song.singer)
    }
}

struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        SongDetail(song: Preliminarysongs[0])
    }
}
