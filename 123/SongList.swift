//
//  SongList.swift
//  123
//
//  Created by User10 on 2019/9/25.
//  Copyright © 2019 Starmy. All rights reserved.
//

import SwiftUI

struct SongList: View {
    var body: some View {
        NavigationView{
            List {
                ScrollView(.horizontal){
                    HStack(spacing: 20) {
                        ForEach(0..<animisongs.count) { (index) in
                            NavigationLink(destination: SongIntroView(animisong: animisongs[index])){
                                Image(animisongs[index].number)
                                    .renderingMode(.original)
                                    .resizable()
                                    .scaledToFit()
                                    .clipped()
                            }
                        }
                    }
                    .frame(height:200)
                }
                
                Section(header: Text("神奈川縣預賽")) {
                    ForEach(0..<Preliminarysongs.count) { (index) in
                        NavigationLink(destination: SongDetail(song: Preliminarysongs[index])) {
                            SongRow(song: Preliminarysongs[index])
                        }
                    }
                }
                
                Section(header: Text("神奈川縣決賽")) {
                    ForEach(0..<Finalsongs.count) { (index) in
                        NavigationLink(destination: SongDetail(song: Finalsongs[index])) {
                            SongRow(song: Finalsongs[index])
                        }
                    }
                }
                
                Section(header: Text("全國大賽")) {
                    ForEach(0..<Nationalsongs.count) { (index) in
                        NavigationLink(destination: SongDetail(song: Nationalsongs[index])) {
                            SongRow(song: Nationalsongs[index])
                        }
                    }
                }
                
            }
            .navigationBarTitle("經典賽事")
        }
    }
}

struct SongList_Previews: PreviewProvider {
    static var previews: some View {
        SongList()
    }
}
